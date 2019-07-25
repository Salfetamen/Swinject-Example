//
//  InitialViewController.swift
//  SwinjectExample
//
//  Created by a.stashevskiy on 25/07/2019.
//

import UIKit


final class InitialViewController: UIViewController {
    
    // MARK: Public Properties
    
    var output: InitialViewOutput?
    
    
    // MARK: Private Properties
    
    @IBOutlet private weak var descriptionLabel: UILabel!
    
    
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


// MARK: - InitialViewInput

extension InitialViewController: InitialViewInput {
    
    func setDescription(_ description: String) {
        descriptionLabel.text = description
    }
    
    func showModule(with viewController: UIViewController) {
        navigationController?.pushViewController(viewController, animated: true)
    }
}
