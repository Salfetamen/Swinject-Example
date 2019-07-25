//
//  InitialViewIO.swift
//  SwinjectExample
//
//  Created by a.stashevskiy on 25/07/2019.
//

import Foundation


protocol InitialViewInput: AnyObject {
    
    func setDescription(_ description: String)
}


protocol InitialViewOutput {
    
    func didLoadEvent()
}
