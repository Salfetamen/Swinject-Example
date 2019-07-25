//
//  SomeViewIO.swift
//  SwinjectExample
//
//  Created by a.stashevskiy on 25/07/2019.
//

import Foundation


protocol SomeViewInput: AnyObject {
    
    func setDescription(_ description: String)
}


protocol SomeViewOutput {
    
    func didLoadEvent()
    func didTapNextButton()
}
