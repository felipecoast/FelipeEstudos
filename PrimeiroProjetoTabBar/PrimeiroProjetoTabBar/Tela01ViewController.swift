//
//  ViewController.swift
//  PrimeiroProjetoTabBar
//
//  Created by Felipe Almeida on 10/11/22.
//

import UIKit

class Tela01ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    var imageList: [String] = []
    var list: [String] = ["car3", "car4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        // Do any additional setup after loading the view.
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ImageTableViewCell.nib(), forCellReuseIdentifier: ImageTableViewCell.identifier)
    }

    @IBAction func editPhotoButton(_ sender: UIButton) {
    }
    
    @IBAction func addButton(_ sender: UIButton) {
        imageList.append(nameTextField.text ?? "")
        tableView.reloadData()
        nameTextField.text = ""
    }
    
}

extension Tela01ViewController: UITableViewDelegate {
    
}

extension Tela01ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ImageTableViewCell.identifier, for: indexPath) as? ImageTableViewCell
        cell?.setupCell(data: User(name: imageList[indexPath.row], image: UIImage(named: "car2") ?? UIImage()))
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 219
    }
    
}
