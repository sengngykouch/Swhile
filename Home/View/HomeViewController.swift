//
//  HomeHomeViewController.swift
//  Swhile
//
//  Created by Sengngy on 30/01/2017.
//  Copyright © 2017 Swhile. All rights reserved.
//

import Foundation
import UIKit
import FacebookLogin

class HomeView: UIViewController, HomeViewProtocol
{

    var presenter: HomePresenterProtocol?
    
    override func viewDidLoad()
    {
        let loginButton = LoginButton(readPermissions: [.publicProfile])
        loginButton.center = view.center
        
        view.addSubview(loginButton)
    }
}
