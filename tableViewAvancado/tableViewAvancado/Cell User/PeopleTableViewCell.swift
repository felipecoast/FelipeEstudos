//
//  PeopleTableViewCell.swift
//  tableViewAvancado
//
//  Created by Felipe Almeida on 27/10/22.
//

import UIKit

class PeopleTableViewCell: UITableViewCell {

    
    @IBOutlet weak var userUIImageView: UIImageView!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    static let identifier: String = "PeopleTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(user: User) {
        userUIImageView.image = user.image
        userNameLabel.text = user.name
    }

}
