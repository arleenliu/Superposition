//
//  IceViewController.swift
//  SuperpositionMilkTea
//
//  Created by Arleen Liu on 3/17/18.
//  Copyright © 2018 Jannie Zhong. All rights reserved.
//

import Foundation
import UIKit

class IceViewController : ChoicesViewController /*UITableViewDelegate, UITableViewDataSource*/ {
   
    var cup1 = CupView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Ice"
        setupSlider()
        self.view.backgroundColor = UIColor.white
        
        let addEntryButton = UIBarButtonItem(title: "Next", style: UIBarButtonItemStyle .plain, target: self, action: #selector(addEntryAction))
        
        // UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addEntryAction))
        self.navigationItem.rightBarButtonItem = addEntryButton
        
        // Add the view to the view hierarchy so that it shows up on screen
        self.view.addSubview(cup1)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.view.addSubview(cup1) // maybe?
    }
    
    @objc private func addEntryAction() {
        let entryViewController = ConfirmViewController()
        navigationController?.pushViewController(entryViewController, animated: true)
    }
    
    func setupSlider() {
        let slider = UISlider(frame: CGRect(x: 50, y: 550, width: 280, height: 20))
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.isContinuous = true
        slider.value = 0
        slider.addTarget(self, action: #selector(sliderValueChanged), for: .valueChanged)
        self.view.addSubview(slider)
    }
    
    @objc func sliderValueChanged(_ sender: UISlider!) {
        cup1.setValues(percent: Double(sender.value), num: 5)
        
    }
    
    func setCup(cv: CupView) {
        cup1 = cv
    }
}
