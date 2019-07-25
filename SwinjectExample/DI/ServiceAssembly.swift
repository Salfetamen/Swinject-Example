//
//  ServiceAssembly.swift
//  SwinjectExample
//
//  Created by a.stashevskiy on 25/07/2019.
//

import Foundation
import Swinject


final class ServiceAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(FirstServiceProtocol.self) { _ in
            FirstService()
        }
        
        container.register(SecondServiceProtocol.self) { r in
            let first = r.resolve(FirstServiceProtocol.self)!
            let second = SecondService(first: first)
            
            return second
        }
        .inObjectScope(.container)
    }
}
