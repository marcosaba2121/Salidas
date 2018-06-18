//
//  ViewController.swift
//  Salidas
//
//  Created by Marcos Abadi on 13/06/18.
//  Copyright © 2018 Marcos Abadi. All rights reserved.
//

import UIKit
import ILLoginKit

class ViewController: UIViewController {

    var hasShownLogin = false
    
    lazy var loginCoordinator: LoginCoordinator = {
        return LoginCoordinator(rootViewController: self)
    }()
    
    lazy var loginViewController: OverridenLoginViewController = {
        let controller = OverridenLoginViewController()
        controller.delegate = self as! LoginViewControllerDelegate
        return controller
    }()
    
    override func viewDidAppear(_ animated: Bool) {
        guard !hasShownLogin else {
            return
        }
        
        hasShownLogin = true
        loginCoordinator.start()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

