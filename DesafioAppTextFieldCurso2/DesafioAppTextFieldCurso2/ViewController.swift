//
//  ViewController.swift
//  DesafioAppTextFieldCurso2
//
//  Created by Felipe Almeida on 24/09/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordConfirmationTextField: UITextField!

    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        configTextField()
        configRegisterButton()
        registerButton.isEnabled = false
    }

    func configTextField() {
        nameTextField.placeholder = "Digite seu Nome"
        emailTextField.placeholder = "Digite seu E-mail"
        passwordTextField.placeholder = "Digite sua Senha"
        passwordConfirmationTextField.placeholder = "Confirme sua Senha"
        
        nameTextField.delegate = self
        emailTextField.delegate = self
        passwordTextField.delegate = self
        passwordConfirmationTextField.delegate = self
    }
    
    func configRegisterButton() {
        registerButton.setTitle("Register", for: .normal)
        registerButton.backgroundColor = .red
        registerButton.tintColor = .white
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderWidth = 2
        textField.layer.borderColor = UIColor.blue.cgColor
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.text == "" {
            textField.layer.borderWidth = 2
            textField.layer.borderColor = UIColor.red.cgColor
        } else {
            textField.layer.borderWidth = 0
        }
        
        //MARK: Exemplo Gabs (validação de senha)
//        if nameTextField.text == ""  emailTextField.text == ""  passwordTextField.text == "" || confirmPassword.text == "" {
//                    registerButton.isEnabled = false
//                } else if passwordTextField.text != confirmPassword.text {
//                    registerButton.isEnabled = false
//                } else {
//                    registerButton.isEnabled = true
//                }
//
        
        //Validação de senha.
        if nameTextField.text == "" || emailTextField.text == "" || passwordTextField.text == "" || passwordConfirmationTextField.text == "" {
            registerButton.isEnabled = false
        } else if passwordTextField.text == passwordConfirmationTextField.text {
            registerButton.isEnabled = true
        } else {
            print("Senha incorreta.")
        }
        
        //Validação campo de senhas.
        if passwordTextField.text != passwordConfirmationTextField.text {
            passwordTextField.layer.borderWidth = 2
            passwordTextField.layer.borderColor = UIColor.red.cgColor
            passwordConfirmationTextField.layer.borderWidth = 2
            passwordConfirmationTextField.layer.borderColor = UIColor.red.cgColor
        } else {
            passwordTextField.layer.borderWidth = 0
            passwordConfirmationTextField.layer.borderWidth = 0
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func registerTappedButton(_ sender: UIButton) {
        print("Cadastro realizado com sucesso!")
    }
    
}

