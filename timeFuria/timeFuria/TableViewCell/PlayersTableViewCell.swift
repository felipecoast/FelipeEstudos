//
//  PlayersTableViewCell.swift
//  timeFuria
//
//  Created by Felipe Almeida on 12/11/22.
//

import UIKit

class PlayersTableViewCell: UITableViewCell {

    @IBOutlet weak var playerNameLabel: UILabel!
    @IBOutlet weak var playerUIImageView: UIImageView!
    
    static let identifier: String = "PlayersTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    func setupCell(player: Player) {
        playerNameLabel.text = player.playerName
        playerUIImageView.image = player.playerImage
    }
    
}
