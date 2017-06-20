//
//  ListRouter.swift
//  ViperTest
//
//  Created by Luan Henrique Damasceno Costa on 14/10/16.
//  Copyright © 2016 Luan Henrique Damasceno Costa. All rights reserved.
//

import UIKit

class ListRouter: NSObject {
    
    // MARK - Variables
    weak var listViewController: ShowListViewController!
    var listPresenter: ListPresenter!
    let storyboardName: String = "List"
    let listViewControllerIdentifier: String = "ShowListView"
    
    
    override init() {
        super.init()
        
        listPresenter = ListPresenter()
        
    }

    func presentListModuleFromViewController(controller: UIViewController)
    {
        self.listViewController = self.listViewControllerFromStoryboard()
        self.listViewController.presenter = self.listPresenter
        
        self.listPresenter.view = listViewController
        self.listPresenter.router = self
        
        // Ou perform a segue
        controller.navigationController!.pushViewController(listViewController, animated: true)
    }
    
    private func listViewControllerFromStoryboard() -> ShowListViewController
    {
        let storyboard = UIStoryboard(name: self.storyboardName, bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: self.listViewControllerIdentifier) as! ShowListViewController
        return viewController
    }

}
