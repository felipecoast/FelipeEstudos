//
//  ViewController.swift
//  PrimeiroProjetoTabBar
//
//  Created by Felipe Almeida on 10/11/22.
//

import UIKit

class Tela01ViewController: UIViewController, UINavigationControllerDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    var imageList: [String] = []
    var list: [String] = ["car3", "car4"]
    let imagePicker: UIImagePickerController = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        nameTextField.delegate = self
        configImagePicker()
    }
    
    func configImagePicker() {
        imagePicker.delegate = self
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ImageTableViewCell.nib(), forCellReuseIdentifier: ImageTableViewCell.identifier)
    }

    @IBAction func editPhotoButton(_ sender: UIButton) {
        imagePicker.allowsEditing = false
//        if UIImagePickerController.isSourceTypeAvailable(.camera) {
//            imagePicker.sourceType = .camera
//        } else {
//            imagePicker.sourceType = .photoLibrary
//        }
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true)
    }
    
    @IBAction func addButton(_ sender: UIButton) {
        if textFieldIsNotEmpty() {
            imageList.append(nameTextField.text ?? "")
            tableView.reloadData()
            nameTextField.text = ""
        } else {
            let alertController = UIAlertController(title: "Atenção!", message: "É necessário adicionar um nome.", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .cancel)
            alertController.addAction(ok)
            present(alertController, animated: true)
        }
    }
    
    func textFieldIsNotEmpty() -> Bool {
        if nameTextField.text?.isEmpty ?? true || nameTextField.text?.hasPrefix(" ") ?? true {
            return false
        } else {
            return true
        }
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

extension Tela01ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

extension Tela01ViewController: UIImagePickerControllerDelegate, UINavigationBarDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            self.userImageView.image = image
        }
        picker.dismiss(animated: true)
    }
    
    
    
}
