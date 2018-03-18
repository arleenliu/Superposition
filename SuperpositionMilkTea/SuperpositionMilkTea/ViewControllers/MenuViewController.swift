//
//  MenuViewController.swift
//  SuperpositionMilkTea
//
//  Created by Jannie Zhong on 3/17/18.
//  Copyright © 2018 Jannie Zhong. All rights reserved.
//

import Foundation
import UIKit

public var entries: [(String, UIButton)] = [("Order", UIButton()),("Profile", UIButton()), ("Browse", UIButton()), ("Settings", UIButton()), ("Logout", UIButton())]

class MenuViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView = UITableView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height), style: .plain)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Menu"
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
        
        
        //        setupOrderButton()
        //        setupProfileButton()
        //        setupBrowseButton()
        //        setupSettingsButton()
        //        setupLogoutButton()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return entries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //public var entries: [(String, UIColor)] = []
        let entry = entries[indexPath.row]
        let cell = UITableViewCell()
        cell.textLabel?.text = entry.0
        cell.backgroundColor = UIColor.green
        return cell
    }
    
    
    
    
    
//    @objc private func addEntryAction() {
//        let entryViewController = MoodEntryViewController()
//        navigationController?.pushViewController(entryViewController, animated: true)
//    }
    
    
}
