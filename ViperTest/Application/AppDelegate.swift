//
//  AppDelegate.swift
//  ViperTest
//
//  Created by Luan Henrique Damasceno Costa on 13/10/16.
//  Copyright © 2016 Luan Henrique Damasceno Costa. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let appDependencies = AppDependencies()
        
        appDependencies.installRootViewControllerIntoWindow(window: self.window!)
        
        return true
    }


}

