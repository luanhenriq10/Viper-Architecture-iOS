//
//  AppDependencies.swift
//  ViperTest
//
//  Created by Luan Henrique Damasceno Costa on 13/10/16.
//  Copyright © 2016 Luan Henrique Damasceno Costa. All rights reserved.
//

import UIKit

class AppDependencies : NSObject
{
    // MARK: Instance Variables
    
    var loginWireframe: LoginRouter!
    
    
    // MARK: Public
    
    override init()
    {
        let rootRoute = SuperRoute()
        
        self.loginWireframe = LoginRouter()
        self.loginWireframe.rootWireframe = rootRoute
    }
    
    func installRootViewControllerIntoWindow(window: UIWindow)
    {
        self.loginWireframe.presentLoginModuleFromWindow(window: window)
    }

}
