//
//  HomeHomeViewController.swift
//  Swhile
//
//  Created by Sengngy on 30/01/2017.
//  Copyright © 2017 Swhile. All rights reserved.
//

import Foundation
import UIKit
import FBSDKLoginKit

class HomeView: UIViewController, HomeViewProtocol
{

    var presenter: HomePresenterProtocol?
    
    override func viewDidLoad()
    {
        if (FBSDKAccessToken.current() == nil)
        {
            present(LoginView, animated: true, completion: nil)
        }
    }
}
