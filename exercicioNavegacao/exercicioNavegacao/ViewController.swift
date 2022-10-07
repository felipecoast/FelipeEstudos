//
//  ViewController.swift
//  exercicioNavegacao
//
//  Created by Felipe Almeida on 06/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func tappedModalButton(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(withIdentifier: "Tela02VC") as? Tela02VC
        present(vc ?? UIViewController(), animated: true)
    }
    
    @IBAction func tappedNavigationButton(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(withIdentifier: "Tela02VC") as? Tela02VC
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
}

