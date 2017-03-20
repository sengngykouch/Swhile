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

    // Once the button is clicked, show the login dialog
    @objc func loginButtonClicked() {
        let loginManager = LoginManager()
        loginManager.logIn([ .publicProfile ], viewController: self) { loginResult in
            switch loginResult {
            case .failed(let error):
                print(error)
            case .cancelled:
                print("User cancelled login.")
            case .success(let grantedPermissions, let declinedPermissions, let accessToken):
                print("Logged in!")
                self.dismiss(animated: true, completion: nil)
            }
        }
    }

}
