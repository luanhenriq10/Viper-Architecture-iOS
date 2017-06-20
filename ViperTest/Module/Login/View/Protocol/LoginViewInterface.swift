//
//  ArticlesViewInterface.swift
//  ViperTest
//
//  Created by Luan Henrique Damasceno Costa on 13/10/16.
//  Copyright © 2016 Luan Henrique Damasceno Costa. All rights reserved.
//

import UIKit

// Protocolo liberado pela ViewController, para ser chamada em outras classes. Sao as funcoes que a classe deixa disponivel para acesso de outras classes
protocol LoginViewInterface: class {
    func getResponseFromMakeLogin(response: String)
}
