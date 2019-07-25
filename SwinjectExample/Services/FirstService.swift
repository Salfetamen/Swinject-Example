//
//  FirstService.swift
//  SwinjectExample
//
//  Created by a.stashevskiy on 25/07/2019.
//

import Foundation


protocol FirstServiceProtocol {
    
    var description: String { get }
}


final class FirstService: FirstServiceProtocol {
    
    // MARK: Public Properties
    
    lazy var description: String = {
        return UUID().uuidString.components(separatedBy: "-").first ?? "none"
    }()
}
