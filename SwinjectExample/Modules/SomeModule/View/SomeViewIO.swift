//
//  SomeViewIO.swift
//  SwinjectExample
//
//  Created by a.stashevskiy on 25/07/2019.
//

import Foundation


protocol SomeViewInput: AnyObject {
    
    func setFirstDescription(_ description: String)
    func setSecondDescription(_ description: String)
}


protocol SomeViewOutput {
    
    func didLoadEvent()
}
