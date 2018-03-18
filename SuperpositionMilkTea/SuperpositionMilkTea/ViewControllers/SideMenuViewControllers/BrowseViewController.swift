//
//  BrowseViewController.swift
//  SuperpositionMilkTea
//
//  Created by Jannie Zhong on 3/17/18.
//  Copyright © 2018 Jannie Zhong. All rights reserved.
//

import Foundation
import UIKit

var recent: [String] = ["Horizons School of Technology: Peach Mango Milk Tea W/ Boba -> Click for details","Costco Wholesale: Passion Fruit Tea W/ Boba -> Click for details"]
class BrowseViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView = UITableView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height), style: .plain)

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "BROWSE"
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recent.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //public var recent: [(String, UIColor)] = []
        let entry = recent[indexPath.row]
        let cell = UITableViewCell()
        cell.textLabel?.text = entry
        
        
        if (indexPath.row%2 == 0){
            cell.backgroundColor = UIColor.lightGray
        } else{
            cell.backgroundColor = UIColor.purple
        }
        
        return cell
    }
    
    
}
