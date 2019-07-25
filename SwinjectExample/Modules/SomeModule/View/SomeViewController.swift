//
//  SomeViewController.swift
//  SwinjectExample
//
//  Created by a.stashevskiy on 25/07/2019.
//

import UIKit


final class SomeViewController: UIViewController {
    
    // MARK: Public Properties
    
    var output: SomeViewOutput?
    
    
    // MARK: Private Properties
    
    @IBOutlet private weak var firstLabel: UILabel!
    @IBOutlet private weak var secondLabel: UILabel!
    
    
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        output?.didLoadEvent()
    }
}


// MARK: - SomeViewInput

extension SomeViewController: SomeViewInput {
    
    func setFirstDescription(_ description: String) {
        firstLabel.text = description
    }
    
    func setSecondDescription(_ description: String) {
        secondLabel.text = description
    }
}
