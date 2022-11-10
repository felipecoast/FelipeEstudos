//
//  ViewController.swift
//  PokeTableViewCollectionView
//
//  Created by Felipe Almeida on 09/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var pokeList: [PokeInfo] =  [
        PokeInfo(title: "Starters from Generation 1", list: ["bulbasaur", "charmander", "squirtle"]),
        PokeInfo(title: "Starters from Generation 2", list: ["chikorita", "cyndaquil", "totodile"]),
        PokeInfo(title: "Starters from Generation 3", list: ["treecko", "torchic", "mudkip"])
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        // Do any additional setup after loading the view.
    }

    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(GenTableViewCell.nib(), forCellReuseIdentifier: GenTableViewCell.identifier)
    }

}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: GenTableViewCell.identifier, for: indexPath) as? GenTableViewCell
        cell?.setupCell(data: pokeList[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 280
    }
    
}

