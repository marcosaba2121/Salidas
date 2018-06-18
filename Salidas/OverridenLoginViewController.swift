//
//  OverridenLoginViewController.swift
//  Recetas
//
//  Created by Marcos Abadi on 24/05/18.
//  Copyright © 2018 Marcos Abadi. All rights reserved.
//

import Foundation
import ILLoginKit

class OverridenLoginViewController: LoginViewController {
    
    override func viewDidLoad() {
        configuration = Settings.defaultLoginConfig // configure before calling super
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
