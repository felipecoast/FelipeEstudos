//
//  PlayersTableViewCell.swift
//  timeFuria
//
//  Created by Felipe Almeida on 12/11/22.
//

import UIKit

class PlayersTableViewCell: UITableViewCell {

    @IBOutlet weak var cellBackgroungView: UIView!
    @IBOutlet weak var playerNameLabel: UILabel!
    @IBOutlet weak var playerUIImageView: UIImageView!
    
    static let identifier: String = "PlayersTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cellConfig()
        layoutSubviews()
        selectionStyle = .none
    }
    
    override var frame: CGRect {
        get {
            return super.frame
        }
        set (newFrame) {
            var frame =  newFrame
            frame.origin.y += 4
            frame.size.height -= 2 * 5
            super.frame = frame
        }
      }
    
    func cellConfig() {
        cellBackgroungView.layer.cornerRadius = 20
        cellBackgroungView.layer.borderWidth = 2.5
        cellBackgroungView.layer.borderColor = UIColor.black.cgColor

        
        playerNameLabel.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        playerNameLabel.font = UIFont(name: "thonburi", size: 22)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.frame.inset(by: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
    }
    
    func setupCell(player: Player) {
        playerNameLabel.text = player.playerName
        playerUIImageView.image = player.playerImage
    }
    
}
