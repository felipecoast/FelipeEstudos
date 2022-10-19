//
//  ViewController.swift
//  TransicaodeDadosEntreTelas2
//
//  Created by Felipe Almeida on 18/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var positionTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedGoToScreen02Button(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(withIdentifier: "Tela02VC") as? Tela02VC
        
        let felipe = Pessoa(name: nameTextField.text ?? "", lastName: lastNameTextField.text ?? "", age: ageTextField.text ?? "", position: positionTextField.text ?? "")
        
        vc?.pessoa = felipe
        
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
}

