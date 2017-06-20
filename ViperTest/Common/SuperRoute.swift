//
//  SuperRoute.swift
//  ViperTest
//
//  Created by Luan Henrique Damasceno Costa on 13/10/16.
//  Copyright © 2016 Luan Henrique Damasceno Costa. All rights reserved.
//

import UIKit

class SuperRoute: NSObject {
    
    func showRootViewControllerInWindow(viewController: UIViewController, window: UIWindow)
    {
        let navigationController = window.rootViewController as! UINavigationController
        navigationController.viewControllers = [viewController]
    }

}
