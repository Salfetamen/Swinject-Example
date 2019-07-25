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
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        output?.didLoadEvent()
    }
    
    
    // MARK: Private
    
    @IBAction private func didTapNextButton(_ sender: Any) {
        output?.didTapNextButton()
    }
}


// MARK: - SomeViewInput

extension SomeViewController: SomeViewInput {
    
    func setDescription(_ description: String) {
        descriptionLabel.text = description
    }
}
