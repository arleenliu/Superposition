//
//  TopViewController.swift
//  SuperpositionMilkTea
//
//  Created by Arleen Liu on 3/17/18.
//  Copyright © 2018 Jannie Zhong. All rights reserved.
//

import Foundation
import UIKit

class TopViewController : ChoicesViewController /*UITableViewDelegate, UITableViewDataSource*/ {
    
    var foamButton = UIButton()
    var basilSeedButton = UIButton()
    var herbalJellyfoamButton = UIButton()

    
    var cup1 = CupView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Toppings"
        self.view.backgroundColor = UIColor.white
        setFoamButton()
        setupSlider()
        
        setBasilSeeds()
        setHerbalJelly()
        
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
    
    // put setValues in here to run
    func setFoamButton() {
        foamButton = UIButton(frame: CGRect(x: UIScreen.main.bounds.width * 1 / 20, y: UIScreen.main.bounds.height / 7.0, width: UIScreen.main.bounds.width / 4.5, height: UIScreen.main.bounds.height / 7))
        foamButton.backgroundColor = UIColor.cyan
        foamButton.layer.cornerRadius = 3.0
        foamButton.setTitle("Milk Foam", for: .normal)
        foamButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        self.view.addSubview(foamButton)
    }
    
    func setBasilSeeds() {
        basilSeedButton = UIButton(frame: CGRect(x: UIScreen.main.bounds.width - UIScreen.main.bounds.width / 4.5 - UIScreen.main.bounds.width * 1 / 20, y: UIScreen.main.bounds.height / 7.0, width: UIScreen.main.bounds.width / 4.5, height: UIScreen.main.bounds.height / 7))
        basilSeedButton.backgroundColor = UIColor.cyan
        basilSeedButton.layer.cornerRadius = 3.0
        basilSeedButton.setTitle("Basil Seeds", for: .normal)
        //basilSeedButton(self, action: #selector(buttonTapped), for: .touchUpInside)
        self.view.addSubview(basilSeedButton)
    }
    
    func setHerbalJelly() {
        herbalJellyfoamButton = UIButton(frame: CGRect(x: UIScreen.main.bounds.width * 1 / 20, y: (UIScreen.main.bounds.height - UIScreen.main.bounds.height * 2 / 7 - 50), width: UIScreen.main.bounds.width / 4.5, height: UIScreen.main.bounds.height / 7))
        herbalJellyfoamButton.backgroundColor = UIColor.cyan
        herbalJellyfoamButton.layer.cornerRadius = 3.0
        herbalJellyfoamButton.setTitle("Herbal Jelly", for: .normal)
        //herbalJellyfoamButton(self, action: #selector(buttonTapped), for: .touchUpInside)
        self.view.addSubview(herbalJellyfoamButton)
    }
    
    @objc private func addEntryAction() {
        let entryViewController = IceViewController()
        entryViewController.setCup(cv: cup1)
        navigationController?.pushViewController(entryViewController, animated: true)
    }
    
    @objc func buttonTapped() {
        foamButton.backgroundColor = UIColor.orange
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
        cup1.setValues(percent: Double(sender.value), num: 4)
        
    }
    
    func setCup(cv: CupView) {
        cup1 = cv
    }
    
}
