//
//  PokeCollectionViewCell.swift
//  PokeTableViewCollectionView
//
//  Created by Felipe Almeida on 09/11/22.
//

import UIKit

class PokeCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var pokeImageView: UIImageView!
    
    static let identifier: String = "PokeCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        pokeImageView.contentMode = .scaleAspectFill
        // Initialization code
    }

    func setupCell(nameImage: String) {
        pokeImageView.image = UIImage(named: nameImage)
    }
    
}
