//
//  SecondService.swift
//  SwinjectExample
//
//  Created by a.stashevskiy on 25/07/2019.
//

import Foundation


protocol SecondServiceProtocol {
    
    var advancedDescription: String { get }
}


final class SecondService: SecondServiceProtocol {
    
    // MARK: Private Properties
    
    private let first: FirstServiceProtocol
    
    
    // MARK: Public Properties
    
    lazy var advancedDescription: String = {
        let description = UUID().uuidString.components(separatedBy: "-").first ?? "none again"
        return "\(first.description) \(description)"
    }()
    
    
    // MARK: Lifecycle
    
    init(first: FirstServiceProtocol) {
        self.first = first
    }
}
