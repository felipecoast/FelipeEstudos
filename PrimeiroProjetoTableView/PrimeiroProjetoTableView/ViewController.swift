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
// 4 Criar célula
// 5 Configurar célula
// 6 Registrar a célula
// 7 Configurar Exibição da Célula

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var data: [String] = ["Caio", "Felipe", "Jean", "Lucas", "Andressa"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        // Do any additional setup after loading the view.
    }

    func configTableView() {
        // O 'self' mostra quem assina -> a própria classe ViewController
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(NameTableViewCell.nib(), forCellReuseIdentifier: NameTableViewCell.identifier)
    }

}

extension ViewController: UITableViewDataSource {
    
    // Indica a quantidade de linhas por seção
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    // Popular a célula
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: NameTableViewCell.identifier, for: indexPath) as? NameTableViewCell
        
        cell?.setupCell(name: data[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("O aluno selecionado foi: \(data[indexPath.row])")
    }
    
}
