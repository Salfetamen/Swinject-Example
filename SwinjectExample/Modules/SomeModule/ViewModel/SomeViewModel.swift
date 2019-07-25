//
//  SomeViewModel.swift
//  SwinjectExample
//
//  Created by a.stashevskiy on 26/07/2019.
//

import Foundation
import Swinject


final class SomeViewModel {
    
    // MARK: Private Properties
    
    private let firstService: FirstServiceProtocol
    private let secondService: SecondServiceProtocol
    private weak var viewInput: SomeViewInput?
    
    // Not for service resolving inside the module but for further module creation
    private let resolver: Resolver
    
    
    // MARK: Lifecycle
    
    init(firstService: FirstServiceProtocol,
         secondService: SecondServiceProtocol,
         viewInput: SomeViewInput,
         resolver: Resolver) {
        self.firstService = firstService
        self.secondService = secondService
        self.viewInput = viewInput
        self.resolver = resolver
    }
}


// MARK: - SomeViewOutput

extension SomeViewModel: SomeViewOutput {
    
    func didLoadEvent() {
        viewInput?.setFirstDescription(firstService.description)
        viewInput?.setSecondDescription(secondService.advancedDescription)
    }
}
