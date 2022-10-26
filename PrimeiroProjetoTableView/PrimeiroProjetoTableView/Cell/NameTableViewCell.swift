//
//  NameTableViewCell.swift
//  PrimeiroProjetoTableView
//
//  Created by Felipe Almeida on 20/10/22.
//

import UIKit

// Criar a célula
// Criar a identifier
// Add identifier na xib
// Criar método da Nib
// Criar os elementos e fazer as suas ligações
// Configurar elementos -> cor de texto, fonte...
// Criar método de Setup <- IMPORTANTE

class NameTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    // O nome do arquivo é o mesmo nome da classe, que é o mesmo nome do identificador
    static let identifier: String = "NameTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    // Ciclo de vida da célula -> Como se fosse um viewDidLoad
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    //(brand: Brand)
    //nameLabel.text = brand.name
    //imageView.image = brand.image
    func setupCell(name: String) {
        nameLabel.text = name
    }
    
}
