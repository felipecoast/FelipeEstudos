//
//  Tela02VC.swift
//  TransicaodeDadosEntreTelas2
//
//  Created by Felipe Almeida on 18/10/22.
//

import UIKit

class Tela02VC: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var positionLabel: UILabel!
    
    var pessoa: Pessoa?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = pessoa?.name
        lastNameLabel.text = pessoa?.lastName
        ageLabel.text = pessoa?.age
        positionLabel.text = pessoa?.position

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
