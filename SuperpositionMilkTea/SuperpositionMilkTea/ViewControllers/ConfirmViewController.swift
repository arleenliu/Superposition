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
        
        let centerMessage = UILabel(frame: CGRect(x: 0, y: 0 - 50, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        centerMessage.textAlignment = .center
        centerMessage.text = "Your order is complete!"
        self.view.addSubview(centerMessage)
        
    
        let pay = UIButton(frame: CGRect(x: (UIScreen.main.bounds.width / 2) - 50, y: (UIScreen.main.bounds.height * (6 / 12)), width: 100, height: 60))
        pay.backgroundColor = UIColor.blue
        pay.layer.cornerRadius = 3.0
        pay.setTitle("Pay for your drink", for: .normal)
        self.view.addSubview(pay)
        
    
        let save = UIButton(frame: CGRect(x: (UIScreen.main.bounds.width - 100), y: UIScreen.main.bounds.height * 15/100, width: 50, height: 50))
        save.backgroundColor = UIColor.blue
        save.layer.cornerRadius = 3.0
        save.setTitle("Save", for: .normal)
        self.view.addSubview(save)
        


        let nextButton = UIButton(frame: CGRect(x: (UIScreen.main.bounds.width / 2) - 80, y: (UIScreen.main.bounds.height * 3 / 4), width: 170, height: 60))
        nextButton.backgroundColor = UIColor.blue
        nextButton.layer.cornerRadius = 3.0
        nextButton.setTitle("Return to home", for: .normal)
        nextButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        self.view.addSubview(nextButton)
        
        
    
    }
    
    @objc func buttonTapped() {
        let entryViewController = OrderViewController()
        navigationController?.pushViewController(entryViewController, animated: true)
    }

}
