//
//  LoginRouter.swift
//  ViperTest
//
//  Created by Luan Henrique Damasceno Costa on 13/10/16.
//  Copyright © 2016 Luan Henrique Damasceno Costa. All rights reserved.
//

import UIKit

// Classe mais importante no VIPER. Responsável por criar e instanciar todas as classes para um modulo funcionar. Ele inicia todas as classes e seta as responsábilidades de cada um.
// Os routers tambem possuem a capacidade de comunicar com os modulos e inicializa-los
class LoginRouter: NSObject {

    
    weak var loginViewController: ViewController!
    var loginPresenter: LoginPresenter!
    var rootWireframe: SuperRoute!
    var listRouter: ListRouter!
    let storyboardName = "Main"
    let loginViewControllerIdentifier = "ViewController"
    
        
    override init (){
        super.init()
        
        let loginInteractor = LoginInteractor()
        
        self.loginPresenter = LoginPresenter()
        self.loginPresenter.interactor = loginInteractor
        self.loginPresenter.router    = self
        
        loginInteractor.outputInteractor = self.loginPresenter
    }
    
    func presentLoginModuleFromWindow(window: UIWindow)
    {
        self.loginViewController = self.loginViewControllerFromStoryboard()
        self.loginViewController.presenter = self.loginPresenter
        
        self.loginPresenter.view = self.loginViewController
        
        self.rootWireframe.showRootViewControllerInWindow(viewController: self.loginViewController, window: window)
    }
    
    private func loginViewControllerFromStoryboard() -> ViewController
    {
        let storyboard = UIStoryboard(name: self.storyboardName, bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: self.loginViewControllerIdentifier) as! ViewController
        return viewController
    }
    
    func presentListModule () {
        // Se tiver que passar algo por parametro, passe por aqui!
        listRouter = ListRouter()
        
        listRouter.presentListModuleFromViewController(controller: self.loginViewController)
    }
}
