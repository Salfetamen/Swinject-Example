//
//  AppDelegate.swift
//  SwinjectExample
//
//  Created by a.stashevskiy on 25/07/2019.
//

import Swinject
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: Private Properties
    
    private let assembler = Assembler()


    // MARK: Public
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        setupDI()
        
        return true
    }
    
    
    // MARK: Private
    
    private func setupDI() {
        let assembly = ServiceAssembly()
        assembler.apply(assembly: assembly)
    }

}

