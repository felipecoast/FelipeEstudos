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
    
    @IBAction func tappedGoToTela02(_ sender: UIButton) {
        performSegue(withIdentifier: "goToTela02", sender: nil)
    }
}

