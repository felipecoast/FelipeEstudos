//
//  CustomCollectionViewCell.swift
//  PrimeiroProjetoCollectionView
//
//  Created by Felipe Almeida on 07/11/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var carImageView: UIImageView!
    
    //'static': podemos utilizá-lo em qualquer lugar do nosso app sem a necessidade de criar uma instância. preserva o valor dela mesmo estando fora de seu escopo.
    static let identifier: String = "CustomCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

    //ciclo de vida da cell, podendo comparar com o viewDidLoad da ViewController
    override func awakeFromNib() {
        super.awakeFromNib()
        //coloca todas as imagens na mesma proporção
        carImageView.contentMode = .scaleAspectFill
        // Initialization code
    }
    
    func setupCell(nameImage: String) {
        carImageView.image = UIImage(named: nameImage)
    }

}
