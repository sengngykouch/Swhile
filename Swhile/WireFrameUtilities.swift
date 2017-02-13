//
//  WireFrameUtilities.swift
//  Swhile
//
//  Created by Angel Cortez on 2/13/17.
//  Copyright © 2017 sengngy. All rights reserved.
//

import Foundation
import UIKit

struct WireFrameUtilities
{
    static func getNavigationControllerFromStoryboard(_ navigationControllerName: String, storyboardName: String) -> UINavigationController{
        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        let navigationController = storyboard.instantiateViewController(withIdentifier: navigationControllerName) as! UINavigationController
        return navigationController
    }
    
    
    static func getViewControllerFromStoryboard(_ viewName: String, storyboardName: String) -> UIViewController{
        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)//mainStoryBoard()
        let viewController = storyboard.instantiateViewController(withIdentifier: viewName)
        return viewController
    }
    
    static func mainStoryBoard() -> UIStoryboard{
        let storyboard = UIStoryboard(name: "Home", bundle: Bundle.main)
        return storyboard
    }
}
