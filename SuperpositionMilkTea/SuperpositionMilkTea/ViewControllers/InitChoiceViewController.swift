//
//  InitChoiceViewController.swift
//  SuperpositionMilkTea
//
//  Created by Jannie Zhong on 3/17/18.
//  Copyright © 2018 Jannie Zhong. All rights reserved.
//

import Foundation
import UIKit

class InitChoiceViewController : UIViewController /*UITableViewDelegate, UITableViewDataSource*/ {
    var submitButton = UIButton()
    var mediumButton = UIButton()
    var plainButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Your Order"
        self.view.backgroundColor = UIColor.white
        setupLabels()
        setupSlider()
        setupSubmitButton()
        setupMediumButton()
        
    }
    
    // MARK: Helpers
    func setupLabels() {
        
        let sizeLabel = UILabel(frame: CGRect(x: 0, y: UIScreen.main.bounds.height / 4.0, width: UIScreen.main.bounds.width, height: 80))
        sizeLabel.font = UIFont.systemFont(ofSize: 20)
        sizeLabel.textAlignment = .center
        sizeLabel.text = "Size"
        self.view.addSubview(sizeLabel)
        
        let flavorLabel = UILabel(frame: CGRect(x: 0, y: UIScreen.main.bounds.height / 2.0, width: UIScreen.main.bounds.width, height: 80))
        flavorLabel.font = UIFont.systemFont(ofSize: 20)
        flavorLabel.textAlignment = .center
        flavorLabel.text = "Flavor"
        self.view.addSubview(flavorLabel)
        
        let sugarLabel = UILabel(frame: CGRect(x: 0, y: 3*UIScreen.main.bounds.height / 4.0, width: UIScreen.main.bounds.width, height: 80))
        sugarLabel.font = UIFont.systemFont(ofSize: 20)
        sugarLabel.textAlignment = .center
        sugarLabel.text = "Sugar"
        self.view.addSubview(sugarLabel)
    }
    
    func setupSlider() {
        let slider = UISlider(frame: CGRect(x: 50, y: 260, width: 280, height: 20))
        slider.minimumValue = 1
        slider.maximumValue = 5
        slider.isContinuous = true
        slider.value = 3
        slider.addTarget(self, action: #selector(sliderValueChanged(_:)), for: .valueChanged)
        self.view.addSubview(slider)
    }
    
    func setupSubmitButton() {
        submitButton = UIButton(frame: CGRect(x: 90, y: 370, width: 100, height: 60))
        submitButton.backgroundColor = UIColor.blue
        submitButton.layer.cornerRadius = 3.0
        submitButton.setTitle("SUBMIT", for: .normal)
        submitButton.addTarget(self, action: #selector(buttonTapped1), for: .touchUpInside)
        self.view.addSubview(submitButton)
    }
    
    func setupMediumButton() {
        mediumButton = UIButton(frame: CGRect(x: 90, y: 570, width: 100, height: 60))
        mediumButton.backgroundColor = UIColor.blue
        mediumButton.layer.cornerRadius = 3.0
        mediumButton.setTitle("MEDIUM", for: .normal)
        mediumButton.addTarget(self, action: #selector(buttonTapped2), for: .touchUpInside)
        self.view.addSubview(mediumButton)
    }
    
    func setupPlainButton() {
        plainButton = UIButton(frame: CGRect(x: 90, y: 370, width: 100, height: 60))
        plainButton.backgroundColor = UIColor.blue
        plainButton.layer.cornerRadius = 3.0
        plainButton.setTitle("SUBMIT", for: .normal)
        plainButton.addTarget(self, action: #selector(buttonTapped3), for: .touchUpInside)
        self.view.addSubview(plainButton)
    }
    
    // MARK: Selectors
    @objc func sliderValueChanged(_ sender: UISlider!) {
        let roundedValue = round(sender.value)
        sender.value = roundedValue
       
    }
    
    
    @objc func buttonTapped1() {
        
        submitButton.backgroundColor = UIColor.orange
        
//        guard let text = moodLabel.text else {
//            // ensures text != nil
//            return
//        }
//        //entries.append((text, moodLabel.textColor))
//        navigationController?.popViewController(animated: true)
    }
    
    @objc func buttonTapped2() {
        
        mediumButton.backgroundColor = UIColor.orange
        
    }
    @objc func buttonTapped3() {
        
        plainButton.backgroundColor = UIColor.orange
        
    }
    
    
}
