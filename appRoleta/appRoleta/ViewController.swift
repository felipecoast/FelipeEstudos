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
    var person: Person?
    var alert: AlertController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alert = AlertController(controller: self)
        configTextAndColors()
        configTableView()
        blockedDrawNumberButton()
    }

    @IBAction func tappedRollButton(_ sender: UIButton) {
        self.person = listPerson.randomElement()
        print(person)
        
    }
    
    func configTableView() {
        participantsTableView.delegate = self
        participantsTableView.dataSource = self
        participantsTableView.separatorStyle = .none
        participantsTableView.register(EmptyTableViewCell.nib(), forCellReuseIdentifier: EmptyTableViewCell.identifier)
    }
    
    func blockedDrawNumberButton() {
        if listPerson.isEmpty {
            tappedRollButton.isEnabled = false
            tappedRollButton.alpha = 0.5
        } else {
            tappedRollButton.isEnabled = true
            tappedRollButton.alpha = 1
        }
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Tenho que criar uma lógica de quem foi pressionado, foi sorteado ou não
        //Se sim -> apresentar um alert
        //Se não -> deletar usuário
        dump(self.listPerson[indexPath.row])
        if self.listPerson[indexPath.row] === self.person {
            print("Parabéns! Você foi selecionado!")
            alert?.showAlert(title: "Muito bom", message: "Agora é sua vez, pague a conta :)")
            listPerson.removeAll()
        } else {
            print("Ufa! Você escapou.")
            listPerson.remove(at: indexPath.row)
        }
        blockedDrawNumberButton()
        tableView.reloadData()
    }
    
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
        if !(textField.text?.isEmpty ?? false) {
            listPerson.append(Person(name: textField.text ?? "", image: listImage.randomElement() ?? ""))
            tableView.reloadData()
            blockedDrawNumberButton()
        }
        textField.text = ""
        return true
    }
    
}
