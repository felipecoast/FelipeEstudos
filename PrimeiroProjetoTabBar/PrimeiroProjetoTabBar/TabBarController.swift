//
//  TabBarController.swift
//  PrimeiroProjetoTabBar
//
//  Created by Felipe Almeida on 10/11/22.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configTabBar()
        // Do any additional setup after loading the view.
    }

    func configItems() {
        
    }
    
    func configTabBar() {
        tabBar.layer.borderWidth = 0.5
        tabBar.layer.borderColor = UIColor.black.cgColor
        tabBar.backgroundColor = .white
    }

}
