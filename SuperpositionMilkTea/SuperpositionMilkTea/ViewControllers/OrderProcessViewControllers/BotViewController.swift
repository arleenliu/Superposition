//
//  BotViewController.swift
//  SuperpositionMilkTea
//
//  Created by Arleen Liu on 3/17/18.
//  Copyright © 2018 Jannie Zhong. All rights reserved.
//

import Foundation
import UIKit

class BotViewController : UIViewController /*UITableViewDelegate, UITableViewDataSource*/ {
    
    var pearlButton = UIButton()
    var cup = CupView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Bottom Choice"
        self.view.backgroundColor = UIColor.white
        setPearlButton()
        setupSlider()
        
        let addEntryButton = UIBarButtonItem(title: "Next", style: UIBarButtonItemStyle .plain, target: self, action: #selector(addEntryAction))
        
        // UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addEntryAction))
        self.navigationItem.rightBarButtonItem = addEntryButton
        
        // Add the view to the view hierarchy so that it shows up on screen
        self.view.addSubview(cup.getCup())
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.view.addSubview(cup.getCup()) // maybe?
    }
    
    // put setValues in here to run
    func setPearlButton() {
        pearlButton = UIButton(frame: CGRect(x: ChoicesViewController.width / 5.0, y: ChoicesViewController.height / 7.0, width: ChoicesViewController.width / 5.0, height: ChoicesViewController.height / 7.0))
        pearlButton.backgroundColor = UIColor.yellow
        pearlButton.layer.cornerRadius = 3.0
        pearlButton.setTitle("Pearls", for: .normal)
        pearlButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        self.view.addSubview(pearlButton)
    }
    
    @objc private func addEntryAction() {
        let entryViewController = MilkViewController()
        entryViewController.setCup(cv: cup)
        navigationController?.pushViewController(entryViewController, animated: true)
    }
    
    @objc func buttonTapped() {
        pearlButton.backgroundColor = UIColor.orange
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
        cup.setValues(percent: Double(sender.value), vc: self)
        
    }
    
}
