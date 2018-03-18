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
    init() {
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var foamButton : UIButton
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Toppings"
        foamButton = UIButton(frame: CGRect(x: super.width / 5.0, y: super.height / 7.0, width: super.width / 5.0, height: super.height / 7.0))
        setFoamButton()
        
        super.setNextViewController(nextVC: IceViewController())
        
        
        // Add the view to the view hierarchy so that it shows up on screen
        self.view.addSubview(ChoicesViewController.getCup())
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.view.addSubview(ChoicesViewController.getCup()) // maybe?
    }
    
    // put setValues in here to run
    func setFoamButton() {
        //        let pearlButton = UIButton(frame: CGRect(x: super.width / 5.0, y: super.height / 7.0, width: super.width / 5.0, height: super.height / 7.0))
        foamButton.backgroundColor = UIColor.yellow
        foamButton.layer.cornerRadius = 3.0
        foamButton.setTitle("Milk Foam", for: .normal)
        foamButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        self.view.addSubview(foamButton)
    }
    
    @objc func buttonTapped() {
        foamButton.backgroundColor = UIColor.orange
    }
    
    override func sliderValueChanged(_ sender: UISlider!) {
        super.sliderValueChanged(<#T##sender: UISlider!##UISlider!#>)
        
        ChoicesViewController.setValues(percent: Double(sender.value), vc: self)
        
    }
    
}
