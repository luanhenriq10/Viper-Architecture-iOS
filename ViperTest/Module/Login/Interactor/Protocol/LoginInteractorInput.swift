//
//  LoginInteractorInput.swift
//  ViperTest
//
//  Created by Luan Henrique Damasceno Costa on 13/10/16.
//  Copyright © 2016 Luan Henrique Damasceno Costa. All rights reserved.
//

import UIKit

// Protocolo para chamada de funcao que vem do presenter. O presenter chama essa funcao e espera o retorno
protocol LoginInteractorInput: class {
    func makeRequestLogin(username: String, password: String)

}
