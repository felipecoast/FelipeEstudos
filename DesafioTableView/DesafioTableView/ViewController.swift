//
//  ViewController.swift
//  DesafioTableView
//
//  Created by Felipe Almeida on 25/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var data: [Brand] = [
    Brand(brand: "Koenigsegg", image: UIImage(named: "koe") ?? UIImage()),
    Brand(brand: "Aston Martin", image: UIImage(named: "ast") ?? UIImage()),
    Brand(brand: "BMW", image: UIImage(named: "bmw") ?? UIImage()),
    Brand(brand: "Ferrari", image: UIImage(named: "fer") ?? UIImage()),
    Brand(brand: "Jaguar", image: UIImage(named: "jag") ?? UIImage()),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        // Do any additional setup after loading the view.
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(BrandTableViewCell.nib(), forCellReuseIdentifier: BrandTableViewCell.identifier)
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: BrandTableViewCell.identifier, for: indexPath) as? BrandTableViewCell
        
        cell?.setupCell(brand: data[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        data.remove(at: indexPath.row)
        tableView.reloadData()
    }
    
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("A marca selecionada foi: \(data[indexPath.row].brand)")
    }
    
}
