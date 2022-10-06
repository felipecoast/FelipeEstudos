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

    @IBAction func tappedScreen2Button(_ sender: UIButton) {
        performSegue(withIdentifier: "GoToScreen2", sender: nil)
    }
    
}

