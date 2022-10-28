//
//  EmployeeTableViewCell.swift
//  tableViewAvancado
//
//  Created by Felipe Almeida on 27/10/22.
//

import UIKit

class EmployeeTableViewCell: UITableViewCell {

    @IBOutlet weak var employeeUIImageView: UIImageView!
    
    @IBOutlet weak var nameEmployeeLabel: UILabel!
    
    @IBOutlet weak var ageEmployeeLabel: UILabel!
    
    @IBOutlet weak var professionEmployeeLabel: UILabel!
    
    @IBOutlet weak var salaryEmployeeLabel: UILabel!
    
    static let identifier: String = "EmployeeTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setupCell(employee: Employee) {
        employeeUIImageView.image = employee.ImageUser
        nameEmployeeLabel.text = employee.name
        ageEmployeeLabel.text = String(employee.age)
        professionEmployeeLabel.text = employee.profession
        salaryEmployeeLabel.text = employee.salary
    }
    
}
