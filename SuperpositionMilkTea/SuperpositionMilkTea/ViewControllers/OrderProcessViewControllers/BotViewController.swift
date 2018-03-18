//
//  BotViewController.swift
//  SuperpositionMilkTea
//
//  Created by Arleen Liu on 3/17/18.
//  Copyright © 2018 Jannie Zhong. All rights reserved.
//

import Foundation
import UIKit

class BotViewController : ChoicesViewController /*UITableViewDelegate, UITableViewDataSource*/ {
    
    var pearlButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Bottom Choice"
        pearlButton = UIButton(frame: CGRect(x: super.width / 5.0, y: super.height / 7.0, width: super.width / 5.0, height: super.height / 7.0))
        setPearlButton()
        
        super.setNextViewController(nextVC: MilkViewController())
        
        
        // Add the view to the view hierarchy so that it shows up on screen
        self.view.addSubview(ChoicesViewController.getCup())
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.view.addSubview(ChoicesViewController.getCup()) // maybe?
    }
    
    // put setValues in here to run
    func setPearlButton() {
//        let pearlButton = UIButton(frame: CGRect(x: super.width / 5.0, y: super.height / 7.0, width: super.width / 5.0, height: super.height / 7.0))
        pearlButton.backgroundColor = UIColor.yellow
        pearlButton.layer.cornerRadius = 3.0
        pearlButton.setTitle("Pearls", for: .normal)
        pearlButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        self.view.addSubview(pearlButton)
    }
    
    @objc func buttonTapped() {
        pearlButton.backgroundColor = UIColor.orange
    }
    
    override func sliderValueChanged(_ sender: UISlider!) {
        super.sliderValueChanged(sender)
        
        ChoicesViewController.setValues(percent: Double(sender.value), vc: self)
        
    }
    
}
