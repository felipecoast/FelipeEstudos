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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func editPhotoButton(_ sender: UIButton) {
    }
    
    @IBAction func addButton(_ sender: UIButton) {
    }
    
}

    func configTableView() {

    
}


extension ImageTableViewCell: UITableViewDelegate {
    
}

extension ImageTableViewCell: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 0
    }
    
}
