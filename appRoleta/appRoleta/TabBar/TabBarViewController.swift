//
//  TabBarViewController.swift
//  appRoleta
//
//  Created by Felipe Almeida on 24/11/22.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configTabBar()
    }
    
    func configTabBar() {
        tabBar.layer.borderWidth = 0.5
        tabBar.layer.borderColor = UIColor.black.cgColor
        tabBar.backgroundColor = .white
    }

    
}
