//
//  ImageTableViewCell.swift
//  PrimeiroProjetoTabBar
//
//  Created by Felipe Almeida on 10/11/22.
//

import UIKit

class ImageTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var photoDisplayImageView: UIImageView!
    @IBOutlet weak var nameCellLabel: UILabel!
    
    static let identifier: String = "ImageTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell(data: User) {
        self.photoDisplayImageView.text = data.name
        self.photoDisplayImageView.image = data.image
    }
    
}
