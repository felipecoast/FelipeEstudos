//
//  ViewController.swift
//  DesafioAppTextFieldCurso
//
//  Created by Felipe Almeida on 24/09/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTextField()
        configRegisterButton()
        registerButton.isEnabled = false
        view.backgroundColor = .orange
    }
    
    func configTextField() {
        nameTextField.placeholder = "Digite o seu Nome"
        addressTextField.placeholder = "Digite o seu Endereço"
        passwordTextField.placeholder = "Digite a sua Senha"
        
        nameTextField.delegate = self
        addressTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    func configRegisterButton() {
        registerButton.setTitle("Register", for: .normal)
        registerButton.backgroundColor = .blue
        registerButton.tintColor = .white
        //Como colocar o bold de forma programática?
    }
    
    //Deixar as bordas azuis quando o foco estiver no teclado.
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderWidth = 2
        textField.layer.borderColor = UIColor.blue.cgColor
    }
    
    //Se os campos estiverem vazios, deixam as bordas vermelhas (+ espessura 2).
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.text == "" {
            textField.layer.borderWidth = 2
            textField.layer.borderColor = UIColor.red.cgColor
        } else {
            textField.layer.borderWidth = 0
        }
        
        //Validação do botão de Registro.
        if nameTextField.text == "" || addressTextField.text == "" || passwordTextField.text == "" {
            registerButton.isEnabled = false
        } else {
            registerButton.isEnabled = true
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

