//
//  LoginPresenterInput.swift
//  ViperTest
//
//  Created by Luan Henrique Damasceno Costa on 13/10/16.
//  Copyright © 2016 Luan Henrique Damasceno Costa. All rights reserved.
//

import UIKit

// O Presenter apenas precisa do protocolo de input, que será chamada pela View. Aqui fica as funcoes que o presenter libera para a view chamar.
protocol LoginPresenterInput: class {
    
    func didRequestLoginWithUserNameAndPassword(username: String, password: String)
    
    func goToHome()
}
