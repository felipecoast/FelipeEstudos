//
//  BrandTableViewCell.swift
//  DesafioTableView
//
//  Created by Felipe Almeida on 25/10/22.
//

import UIKit

class BrandTableViewCell: UITableViewCell {

    @IBOutlet weak var brandTableViewCell: UIImageView!
    
    @IBOutlet weak var brandLabel: UILabel!
    
    static let identifier: String = "BrandTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    func setupCell(brand: Brand) {
        brandLabel.text = brand.brand
        brandTableViewCell.image = brand.image
    }
    
}
