//
//  InitialViewModel.swift
//  SwinjectExample
//
//  Created by a.stashevskiy on 26/07/2019.
//

import Foundation


final class InitialViewModel {
    
    // MARK: Private Properties
    
    private let service: FirstServiceProtocol
    private weak var viewInput: InitialViewInput?
    
    
    // MARK: Lifecycle
    
    init(service: FirstServiceProtocol, viewInput: InitialViewInput) {
        self.service = service
        self.viewInput = viewInput
    }
}


// MARK: - InitialViewOutput

extension InitialViewModel: InitialViewOutput {
    
    func didLoadEvent() {
        viewInput?.setDescription(service.description)
    }
}
