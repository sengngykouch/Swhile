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

class LoginView: UIViewController, LoginViewProtocol, LoginButtonDelegate
{

    var presenter: LoginPresenterProtocol?
    
    override func viewDidLoad()
    {
        let loginButton = LoginButton(readPermissions: [.publicProfile])
        loginButton.center = view.center
        loginButton.delegate = self
        view.addSubview(loginButton)
    }

    public func loginButtonDidCompleteLogin(_ loginButton: FacebookLogin.LoginButton, result: FacebookLogin.LoginResult)
    {
        print("Login did complete")
        self.dismiss(animated: true, completion: nil)
    }
    
    /**
     Called when the button was used to logout.
     
     - parameter loginButton: Button that was used to logout.
     */
    public func loginButtonDidLogOut(_ loginButton: FacebookLogin.LoginButton)
    {
        print("Clicked on logout")
        self.dismiss(animated: true, completion: nil)
    }

}
