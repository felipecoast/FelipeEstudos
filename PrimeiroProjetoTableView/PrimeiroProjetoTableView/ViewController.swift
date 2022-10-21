//
//  ViewController.swift
//  PrimeiroProjetoTableView
//
//  Created by Felipe Almeida on 20/10/22.
//

import UIKit

// Passo a Passo
// 1 Criar a TableView
// 2 Fazer a ligação
// 3 Configurar a TableView

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        // Do any additional setup after loading the view.
    }

    func configTableView() {
        // quem assina -> a própria classe
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension ViewController: UITableViewDataSource {
    
    // Indica a quantidade de linhas por seção
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    // Popular a célula
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
}

extension ViewController: UITableViewDelegate {
    
}
