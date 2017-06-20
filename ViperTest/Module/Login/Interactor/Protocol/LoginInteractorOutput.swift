//
//  LoginPresenterOutput.swift
//  ViperTest
//
//  Created by Luan Henrique Damasceno Costa on 13/10/16.
//  Copyright © 2016 Luan Henrique Damasceno Costa. All rights reserved.
//

import UIKit

// protocolo que retorna para o Presenter o que vem do Interactor.
protocol LoginInteractorOutput: class {
    func responseForLoginRequest(response: String)

}
