//
//  SomeModuleBuilder.swift
//  SwinjectExample
//
//  Created by a.stashevskiy on 25/07/2019.
//

import Foundation
import Swinject


final class SomeModuleBuilder {
    
    // MARK: Private Properties
    
    private let resolver: Resolver
    
    
    // MARK: Lifecycle
    
    init(resolver: Resolver) {
        self.resolver = resolver
    }
    
    
    // MARK: Public
    
    func build() -> UIViewController? {
        let storyboard = UIStoryboard(name: "Some", bundle: nil)
        
        guard let vc = storyboard.instantiateInitialViewController() as? SomeViewController else {
            assertionFailure("Smth went wrong in storyboard!!")
            return nil
        }
        
        guard let service = resolver.resolve(FirstServiceProtocol.self) else {
            assertionFailure("First Service not registered!")
            return nil
        }
        
        let vm = SomeViewModel(service: service, viewInput: vc, resolver: resolver)
        vc.output = vm
        
        return vc
    }
}
