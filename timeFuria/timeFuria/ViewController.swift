//
//  ViewController.swift
//  timeFuria
//
//  Created by Felipe Almeida on 12/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var teamNameLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    let data: [Player] =    [
        Player(playerName: "arT", playerImage: UIImage(named: "art") ?? UIImage(), fullnameLabel: "Andrei 'arT' Piovezan", favoriteWeaponLabel: "AK-47", favoriteMapLabel: "Vertigo", playerAge: "26 anos"),
        Player(playerName: "KSCERATO", playerImage: UIImage(named: "kscerato") ?? UIImage(), fullnameLabel: "Kaike 'KSCERATO' Cerato", favoriteWeaponLabel: "M4A1", favoriteMapLabel: "Overpass", playerAge: "23 anos"),
        Player(playerName: "yuurih", playerImage: UIImage(named: "yuurih") ?? UIImage(), fullnameLabel: "Yuri 'yuurih' Santos", favoriteWeaponLabel: "Desert Eagle", favoriteMapLabel: "Inferno", playerAge: "22 anos"),
        Player(playerName: "drop", playerImage: UIImage(named: "drop") ?? UIImage(), fullnameLabel: "André 'drop' Abreu", favoriteWeaponLabel: "M4A1", favoriteMapLabel: "Vertigo", playerAge: "18 anos"),
        Player(playerName: "saffee", playerImage: UIImage(named: "saffee") ?? UIImage(), fullnameLabel: "Rafael 'saffee' Costa", favoriteWeaponLabel: "AWP", favoriteMapLabel: "Train", playerAge: "26 anos")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        configTextLabel()
    }
    
    func configTextLabel() {
        teamNameLabel.text = "FURIA"
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(PlayersTableViewCell.nib(), forCellReuseIdentifier: PlayersTableViewCell.identifier)
    }

}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = UIStoryboard(name: "DetailsViewController", bundle: nil).instantiateViewController(withIdentifier: "DetailsViewController") as? DetailsViewController
        let player = data[indexPath.row]
        vc?.player = player
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PlayersTableViewCell.identifier, for: indexPath) as? PlayersTableViewCell
        cell?.setupCell(player: data[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 277
    }
    
}
