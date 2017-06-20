//
//  LoginServices.swift
//  ViperTest
//
//  Created by Luan Henrique Damasceno Costa on 13/10/16.
//  Copyright © 2016 Luan Henrique Damasceno Costa. All rights reserved.
//

import UIKit

class LoginServices: NSObject {
    
    var url = ""
    
    static let sharedInstance: LoginServices = LoginServices()
    
    func makeLogin() -> String{
        return "Sucesso";
    }
}
