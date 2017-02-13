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
import FacebookCore

class HomeView: UIViewController, HomeViewProtocol
{

    var presenter: HomePresenterProtocol?
    
    override func viewDidLoad()
    {
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if AccessToken.current == nil
        {
            // User is logged in, use 'accessToken' here.
            let loginVC = WireFrameUtilities.getViewControllerFromStoryboard("LoginVC", storyboardName: "Login")
            self.present(loginVC, animated: true)
        }
    }
}
