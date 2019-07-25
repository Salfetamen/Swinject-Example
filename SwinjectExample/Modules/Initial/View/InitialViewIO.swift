//
//  InitialViewIO.swift
//  SwinjectExample
//
//  Created by a.stashevskiy on 25/07/2019.
//

import UIKit


protocol InitialViewInput: AnyObject {
    
    func setDescription(_ description: String)
    func showModule(with viewController: UIViewController)
}


protocol InitialViewOutput {
    
    func didLoadEvent()
    func didTapNextButton()
}
