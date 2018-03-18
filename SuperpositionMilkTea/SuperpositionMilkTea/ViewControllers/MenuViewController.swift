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
        
        
        setupOrderButton()
        setupProfileButton()
        setupBrowseButton()
        setupSettingsButton()
        setupLogoutButton()
        
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
    
    func setupOrderButton() {
        let orderButton = UIButton(frame: CGRect(x: 0, y: UIScreen.main.bounds.height * 1/12, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 1/12))
       
       
        //orderButton.contentEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        orderButton.setTitleColor(UIColor.black, for: .normal)
        orderButton.backgroundColor = UIColor.green
        orderButton.layer.cornerRadius = 3.0
        orderButton.setTitle(entries[0].0, for: .normal)
        orderButton.addTarget(self, action: #selector(buttonTapped1), for: .touchUpInside)
        
        entries[0].1 = orderButton
        self.view.addSubview(orderButton)
        
    }
    
    func setupProfileButton() {
        let profileButton = UIButton(frame: CGRect(x: 0, y: UIScreen.main.bounds.height * 2/12, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 1/12))
        
        //orderButton.contentEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        profileButton.setTitleColor(UIColor.black, for: .normal)
        profileButton.backgroundColor = UIColor.green
        profileButton.layer.cornerRadius = 3.0
        profileButton.setTitle(entries[1].0, for: .normal)
        profileButton.addTarget(self, action: #selector(buttonTapped2), for: .touchUpInside)
        
        entries[1].1 = profileButton
        
        self.view.addSubview(profileButton)
    }
  
    func setupBrowseButton() {
        let browseButton = UIButton(frame: CGRect(x: 0, y: UIScreen.main.bounds.height * 3/12, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 1/12))
        
        //orderButton.contentEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        browseButton.setTitleColor(UIColor.black, for: .normal)
        browseButton.backgroundColor = UIColor.green
        browseButton.layer.cornerRadius = 3.0
        browseButton.setTitle(entries[2].0, for: .normal)
        browseButton.addTarget(self, action: #selector(buttonTapped3), for: .touchUpInside)
        
        entries[2].1 = browseButton
        
        self.view.addSubview(browseButton)
        
    }
   
    func setupSettingsButton() {
        let settingsButton = UIButton(frame: CGRect(x: 0, y: UIScreen.main.bounds.height * 4/12, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 1/12))
        
        //orderButton.contentEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        settingsButton.setTitleColor(UIColor.black, for: .normal)
        settingsButton.backgroundColor = UIColor.green
        settingsButton.layer.cornerRadius = 3.0
        settingsButton.setTitle(entries[3].0, for: .normal)
        settingsButton.addTarget(self, action: #selector(buttonTapped4), for: .touchUpInside)
        
        entries[3].1 = settingsButton
        
        self.view.addSubview(settingsButton)
    }
    
    func setupLogoutButton() {
        let logoutButton = UIButton(frame: CGRect(x: 0, y: UIScreen.main.bounds.height * 5/12, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 1/12))
        
        //orderButton.contentEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        logoutButton.setTitleColor(UIColor.black, for: .normal)
        logoutButton.backgroundColor = UIColor.green
        logoutButton.layer.cornerRadius = 3.0
        logoutButton.setTitle(entries[4].0, for: .normal)
        logoutButton.addTarget(self, action: #selector(buttonTapped5), for: .touchUpInside)
        
        entries[4].1 = logoutButton
        
        self.view.addSubview(logoutButton)
    }
    
    
    
    
    @objc func buttonTapped1() {
        navigationController?.popViewController(animated: true)
    }
    @objc func buttonTapped2() {
        navigationController?.popViewController(animated: true)
    }
    @objc func buttonTapped3() {
        navigationController?.popViewController(animated: true)
    }
    @objc func buttonTapped4() {
        navigationController?.popViewController(animated: true)
    }
    @objc func buttonTapped5() {
        navigationController?.popViewController(animated: true)
    }
    
    
}
