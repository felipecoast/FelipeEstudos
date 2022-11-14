//
//  DetailsViewController.swift
//  timeFuria
//
//  Created by Felipe Almeida on 12/11/22.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var detailedPlayerImageView: UIImageView!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var favoriteWeaponLabel: UILabel!
    @IBOutlet weak var favoriteMapLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    var player: Player?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailedPlayerImageView.image = player?.playerImage
        fullNameLabel.text = player?.fullnameLabel
        favoriteWeaponLabel.text = "Arma Favorita: \(player?.favoriteWeaponLabel ?? "")"
        favoriteMapLabel.text = "Mapa Favorito: \(player?.favoriteMapLabel ?? "")"
        ageLabel.text = "Idade: \(player?.playerAge ?? "")"
        
    }
    
    @IBAction func tappedBackButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}
