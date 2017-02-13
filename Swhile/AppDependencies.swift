//
//  AppDependencies.swift
//  Swhile
//
//  Created by Angel Cortez on 2/13/17.
//  Copyright © 2017 sengngy. All rights reserved.
//

import Foundation
import UIKit

class AppDependencies{
    var rootWireFrame = RootWireFrame()
    
    func installRootViewControllerIntoWindow(_ window: UIWindow)
    {
        rootWireFrame.showRootTabBarController(window)
    }
}
