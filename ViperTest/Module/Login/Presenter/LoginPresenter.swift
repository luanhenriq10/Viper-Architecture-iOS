//
//  LoginPresenter.swift
//  ViperTest
//
//  Created by Luan Henrique Damasceno Costa on 13/10/16.
//  Copyright © 2016 Luan Henrique Damasceno Costa. All rights reserved.
//

import UIKit

// Presenter possui o input que vem da View e uma interface com o Interactor para receber a resposta da requisicao.
// O presenter também implementa a saida do interactor. LoginInteractorOutput que retorna para que seja chamada a view
class LoginPresenter: NSObject, LoginPresenterInput, LoginInteractorOutput{
    
    // Mark - VIPER Variables
    weak var view: LoginViewInterface!
    
    var interactor: LoginInteractorInput!
    var router: LoginRouter!
    
    // Atendendo a requisicao da View
    func didRequestLoginWithUserNameAndPassword(username: String, password: String){
        interactor.makeRequestLogin(username: username, password: password)
    }
    
    // Recebendo a requisicao do Interactor e passando a view
    func responseForLoginRequest(response: String) {
        // Chamada do protocolo liberado pela view!
        view.getResponseFromMakeLogin(response: response)
    }
    
    func goToHome() {
        router.presentListModule()
    }
    

}
