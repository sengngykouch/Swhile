//
//  LoginLoginViewController.swift
//  Swhile
//
//  Created by ViperTest on 13/02/2017.
//  Copyright © 2017 Swhile, Inc.. All rights reserved.
//

import Foundation
import UIKit
import FacebookLogin

class LoginView: UIViewController, LoginViewProtocol
{

    var presenter: LoginPresenterProtocol?
    
    override func viewDidLoad()
    {
        let loginButton = LoginButton(readPermissions: [.publicProfile])
        loginButton.center = view.center
        
        view.addSubview(loginButton)
    }
}
