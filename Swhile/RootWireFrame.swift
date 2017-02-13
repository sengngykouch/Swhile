//
//  RootWireFrame.swift
//  Swhile
//
//  Created by Angel Cortez on 2/13/17.
//  Copyright © 2017 sengngy. All rights reserved.
//

import Foundation
import UIKit

class RootWireFrame: NSObject{
    fileprivate let navigationControllerOne: String = "HomeNC"
    fileprivate let navigationControllerTwo: String = "MessagesNC"
    fileprivate let navigationControllerThree: String = "ProfileNC"
    
    fileprivate let homeStoryboard = "Home"
    fileprivate let messagesStoryboard = "Messages"
    fileprivate let profileStoryboard = "Profile"
    
    let lfColor = UIColor(red: 255.0/255.0, green: 154.0/255.0, blue: 64/255.0, alpha: 1.0)
    
    fileprivate let viewControllerOne: String = "HomeVC"
    fileprivate let viewControllerTwo: String = "MessagesVC"
    fileprivate let viewControllerThree: String = "ProfileVC"
    
    func showRootTabBarController(_ inWindow: UIWindow)
    {
        let tabBarController = UITabBarController()
        
        
        // Initializing the view controllers
        
        let vcOne = WireFrameUtilities.getViewControllerFromStoryboard(viewControllerOne, storyboardName: homeStoryboard)
        //let vcTwo = WireFrameUtilities.getViewControllerFromStoryboard(viewControllerTwo, storyboardName:  searchStoryboard)
        //let vcThree = WireFrameUtilities.getViewControllerFromStoryboard(viewControllerThree, storyboardName: cameraStoryboard)
        
        // Connecting wireframe to given view
        //EventListWireFrame.presentEventListModule(fromView: vcOne)
        
        // Initializing the navgiation controller for tabs
        
        //let ncOne = WireFrameUtilities.getNavigationControllerFromStoryboard(navigationControllerOne, storyboardName: homeStoryboard)
        let ncTwo = WireFrameUtilities.getNavigationControllerFromStoryboard(navigationControllerTwo, storyboardName: messagesStoryboard)
        let ncThree = WireFrameUtilities.getNavigationControllerFromStoryboard(navigationControllerThree, storyboardName: profileStoryboard)
    
        
        //ncOne.viewControllers = [vcOne]
        //ncTwo.viewControllers = [vcTwo]
        
        // Setting up the TabBar controller
        
        let controllers = [vcOne, ncTwo, ncThree]
        tabBarController.viewControllers = controllers
        tabBarController.tabBar.isTranslucent = false
        tabBarController.tabBar.tintColor = lfColor
        
        
        // Configuring images for view controllers
        let firstImage = UIImage(named: "Home")
        let secondImage = UIImage(named: "Messages")
        let threeImage = UIImage(named: "User")
        vcOne.tabBarItem = UITabBarItem(title: "Home", image: firstImage, tag: 1)
        ncTwo.tabBarItem = UITabBarItem(title: "Messages", image: secondImage, tag: 2)
        ncThree.tabBarItem = UITabBarItem(title: "Profile", image: threeImage, tag: 3)
        
        
        inWindow.rootViewController = tabBarController
        
        // Setting for status bar
        
        let statusBarView = UIView.init(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 20))
        statusBarView.backgroundColor = lfColor
        
        inWindow.rootViewController!.view.addSubview(statusBarView)
        
    }
    
}
