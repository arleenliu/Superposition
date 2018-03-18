//
//  TeaViewController.swift
//  SuperpositionMilkTea
//
//  Created by Jannie Zhong on 3/17/18.
//  Copyright © 2018 Jannie Zhong. All rights reserved.
//

import Foundation
import UIKit

class TeaViewController : ChoicesViewController /*UITableViewDelegate, UITableViewDataSource*/ {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tea"
        
        super.setNextViewController(nextVC: TopViewController())
        
        
        // Add the view to the view hierarchy so that it shows up on screen
        self.view.addSubview(ChoicesViewController.getCup())
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.view.addSubview(ChoicesViewController.getCup()) // maybe?
    }
    
    override func sliderValueChanged(_ sender: UISlider!) {
        super.sliderValueChanged(sender)
        
        ChoicesViewController.setValues(percent: Double(sender.value), vc: self)
        
    }
}
