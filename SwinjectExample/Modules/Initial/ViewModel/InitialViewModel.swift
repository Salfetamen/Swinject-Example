//
//  InitialViewModel.swift
//  SwinjectExample
//
//  Created by a.stashevskiy on 26/07/2019.
//

import Foundation
import Swinject


final class InitialViewModel {
    
    // MARK: Private Properties
    
    private let service: FirstServiceProtocol
    private weak var viewInput: InitialViewInput?
    
    // Not for service resolving inside the module but for further module creation
    private let resolver: Resolver
    
    
    // MARK: Lifecycle
    
    init(service: FirstServiceProtocol, viewInput: InitialViewInput, resolver: Resolver) {
        self.service = service
        self.viewInput = viewInput
        self.resolver = resolver
    }
}


// MARK: - InitialViewOutput

extension InitialViewModel: InitialViewOutput {
    
    func didLoadEvent() {
        viewInput?.setDescription(service.description)
    }
}
