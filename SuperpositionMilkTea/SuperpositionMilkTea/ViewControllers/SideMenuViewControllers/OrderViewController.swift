//
//  OrderViewController.swift
//  SuperpositionMilkTea
//
//  Created by Jannie Zhong on 3/17/18.
//  Copyright © 2018 Jannie Zhong. All rights reserved.
//

import Foundation
import UIKit

class OrderViewController : UIViewController /*UITableViewDelegate, UITableViewDataSource*/ {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "SEARCH NEARBY STORES"
        self.view.backgroundColor = UIColor.white
        
        let addOrderButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addOrderAction))
        self.navigationItem.rightBarButtonItem = addOrderButton
        
        
//        let addOrderButton = UIButton(/*button: .add, target: self, action:, #selector(addOrderAction)*/);
//        self.navigationController = addOrderButton
//
    }
    
    
    @objc private func addOrderAction() {
        let orderViewController = OrderViewController()
        navigationController?.pushViewController(orderViewController, animated: true)
    }
    
//    @objc private func addProfileAction() {
//        let profileViewController = ProfileViewController()
//        navigationController?.pushViewController(profileViewController, animated: true)
//    }
//
//    @objc private func addBrowseAction() {
//        let browseViewController = BrowseViewController()
//        navigationController?.pushViewController(browseViewController, animated: true)
//    }
//
//    @objc private func addSettingsAction() {
//        let settingsViewController = SettingsViewController()
//        navigationController?.pushViewController(settingsViewController, animated: true)
//    }
//
//    @objc private func addLogoutAction() {
//        let logoutViewController = LogoutViewController()
//        navigationController?.pushViewController(logoutViewController, animated: true)
//    }
//
}
