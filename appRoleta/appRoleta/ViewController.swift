//
//  ViewController.swift
//  appRoleta
//
//  Created by Felipe Almeida on 24/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var rollButton: UIButton!
    @IBOutlet weak var participantsTableView: UITableView!
    
    var data: [User] = [User(title: "Insira os participantes para iniciar uma roleta russa", image: UIImage(named: "roleta") ?? UIImage())]
    var listPerson: [Person] = []
    var listImage: [String] = ["Image-1", "Image-2", "Image-3", "Image-4", "Image-5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTextAndColors()
        configTableView()
    }

    @IBAction func tappedRollButton(_ sender: UIButton) {
    }
    
    func configTableView() {
        participantsTableView.delegate = self
        participantsTableView.dataSource = self
        participantsTableView.separatorStyle = .none
        participantsTableView.register(EmptyTableViewCell.nib(), forCellReuseIdentifier: EmptyTableViewCell.identifier)
    }
    
    func configTextAndColors() {
        nameTextField.placeholder = "Digite um nome"
        
        rollButton.setTitle("Sortear", for: .normal)
        rollButton.titleLabel?.textColor = .white
        rollButton.backgroundColor = .blue
        
        nameTextField.delegate = self
    }
    
}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: EmptyTableViewCell.identifier, for: indexPath) as? EmptyTableViewCell
        cell?.setupCell(user: data[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 198
    }
    
}

extension ViewController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
