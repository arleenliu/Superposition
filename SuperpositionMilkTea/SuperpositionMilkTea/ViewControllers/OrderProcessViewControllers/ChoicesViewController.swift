//
//  ChoicesViewController.swift
//  SuperpositionMilkTea
//
//  Created by Jannie Zhong on 3/17/18.
//  Copyright © 2018 Jannie Zhong. All rights reserved.
//

import Foundation
import UIKit

class ChoicesViewController : UIViewController /*UITableViewDelegate, UITableViewDataSource*/ {
    
    var nextVC: UIViewController = UIViewController()
    static let cup: CupView = CupView();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSlider()
       // self.view.addSubview(self.sharedDelegate(c: cup))
        
        let addEntryButton = UIBarButtonItem(title: "Next", style: UIBarButtonItemStyle .plain, target: self, action: #selector(addEntryAction))
            
        // UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addEntryAction))
        self.navigationItem.rightBarButtonItem = addEntryButton
    }
    
    static func sharedDelegate(c: CupView) -> UIView {
        return cup
    }
    
    // call first in subclasses
    func setNextViewController(nextVC: UIViewController) {
        self.nextVC = nextVC;
    }
    
    func setupSlider() {
        let slider = UISlider(frame: CGRect(x: 50, y: 260, width: 280, height: 20))
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.isContinuous = true
        slider.value = 0
        slider.addTarget(self, action: #selector(sliderValueChanged(_:)), for: .valueChanged)
        self.view.addSubview(slider)
    }
    
    @objc func sliderValueChanged(_ sender: UISlider!) {
       // let roundedValue = round(sender.value)
       // sender.value = roundedValue
    }
    
    @objc private func addEntryAction() {
        let entryViewController = nextVC
        navigationController?.pushViewController(entryViewController, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
 
}
