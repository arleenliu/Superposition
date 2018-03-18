//
//  ConfirmViewController.swift
//  SuperpositionMilkTea
//
//  Created by Jannie Zhong on 3/17/18.
//  Copyright © 2018 Jannie Zhong. All rights reserved.
//

import Foundation
import UIKit

class ConfirmViewController : UIViewController /*UITableViewDelegate, UITableViewDataSource*/ {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Confirmation"
        
        let centerMessage = UILabel(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        centerMessage.textAlignment = .center
        centerMessage.text = "Your order is complete!"
        self.view.addSubview(centerMessage)
        
    
        let pay = UIButton(frame: CGRect(x: (UIScreen.main.bounds.width / 2) - 50, y: (UIScreen.main.bounds.height * 3 / 4), width: 100, height: 60))
        pay.backgroundColor = UIColor.blue
        pay.layer.cornerRadius = 3.0
        pay.setTitle("Pay for your drink", for: .normal)
        self.view.addSubview(pay)
        }
        
        
        
        
    
}
