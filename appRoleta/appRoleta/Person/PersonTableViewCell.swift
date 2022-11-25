//
//  PersonTableViewCell.swift
//  appRoleta
//
//  Created by Felipe Almeida on 24/11/22.
//

import UIKit

class PersonTableViewCell: UITableViewCell {

    static let identifier: String = "PersonTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
}
