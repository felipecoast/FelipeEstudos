//
//  ViewController.swift
//  tableViewAvancado
//
//  Created by Felipe Almeida on 27/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let employeeList: [Employee] = [
        
    ]
    
    var data: [User] = [
        User(name: "Felipe", image: UIImage(named: "user1") ?? UIImage())
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        // Do any additional setup after loading the view.
    }

    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(PeopleTableViewCell.nib(), forCellReuseIdentifier: PeopleTableViewCell.identifier)
        tableView.register(EmployeeTableViewCell.nib(), forCellReuseIdentifier: EmployeeTableViewCell.identifier)
    }

}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employeeList.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: PeopleTableViewCell, for: indexPath) as? PeopleTableViewCell
            cell?.setupCell(data: User(name: "Felipe", image: UIImage(named: "user1") ?? UIImage()))
            return cell ?? UITableViewCell()
                            } else {
                let cell = tableView.dequeueReusableCell(withIdentifier: EmployeeTableViewCell, for: IndexPath) as? EmployeeTableViewCell
                                cell?.setupCell(data: employeeList[indexPath.row])
                                return cell ?? UITableViewCell()
            }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: PeopleTableViewCell.identifier, for: indexPath) as? PeopleTableViewCell
        cell?.setupCell(user: data[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
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
        print("O usuário selecionado foi: \(data[indexPath.row].name)")
    }
    
}
