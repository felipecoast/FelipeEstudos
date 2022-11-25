//
//  EmptyTableViewCell.swift
//  appRoleta
//
//  Created by Felipe Almeida on 24/11/22.
//

import UIKit

class EmptyTableViewCell: UITableViewCell {
   
    @IBOutlet weak var backgroundUIView: UIView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var explanationLabel: UILabel!
    
    static let identifier: String = "EmptyTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        explanationLabel.numberOfLines = 0

    }
    
    func setupCell(user: User) {
        secondImageView.image = user.image
        explanationLabel.text = user.title
    }
    
}
