//
//  ViewController.swift
//  ViperTest
//
//  Created by Luan Henrique Damasceno Costa on 13/10/16.
//  Copyright © 2016 Luan Henrique Damasceno Costa. All rights reserved.
//

import UIKit


// Todo o fluxo é realizado por protocolos. A view implementa o protocolo de receber a resposta vinda do Presenter que no caso vem de LoginViewInterface.
class ViewController: UIViewController, LoginViewInterface, UITextFieldDelegate {

    // MARK - Attributes
    @IBOutlet var passField: UITextField!
    @IBOutlet var usernameField: UITextField!
    
    // MARK - VIPER Modules
    var presenter: LoginPresenterInput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passField.delegate = self
        usernameField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    @IBAction func makeLogin(_ sender: AnyObject) {
        presenter.didRequestLoginWithUserNameAndPassword(username: usernameField.text!, password: passField.text!)
    }
    
    // Funcao que será acionada quando o presenter chamar
    func getResponseFromMakeLogin(response: String) {
        if(response == "Sucesso"){
            self.presenter.goToHome()
        }
    }

}

