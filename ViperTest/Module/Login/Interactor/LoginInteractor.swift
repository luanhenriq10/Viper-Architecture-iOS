//
//  LoginInteractor.swift
//  ViperTest
//
//  Created by Luan Henrique Damasceno Costa on 13/10/16.
//  Copyright © 2016 Luan Henrique Damasceno Costa. All rights reserved.
//

import UIKit

class LoginInteractor: NSObject, LoginInteractorInput {

    var outputInteractor: LoginInteractorOutput!
    
    // Toda a lógica e faz as requisições ou chama os services
    func makeRequestLogin(username: String, password: String) {
        let string: String = LoginServices.sharedInstance.makeLogin()
        
        outputInteractor.responseForLoginRequest(response: string)
    }
}
