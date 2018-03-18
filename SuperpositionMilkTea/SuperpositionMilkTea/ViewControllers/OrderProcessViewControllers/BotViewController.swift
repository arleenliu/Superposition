//
//  BotViewController.swift
//  SuperpositionMilkTea
//
//  Created by Arleen Liu on 3/17/18.
//  Copyright © 2018 Jannie Zhong. All rights reserved.
//

import Foundation
import UIKit


var cupObject = CupView()
class BotViewController : UIViewController /*UITableViewDelegate, UITableViewDataSource*/ {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let blueColor = UIColor(red: 0/255.0, green: 0/255.0, blue: 255/255.0, alpha: 1.0)
        blueColor.setFill()
        cupObject.draw(CGRect(x: UIScreen.main.bounds.width*1.0/3, y: UIScreen.main.bounds.height*1/5, width: UIScreen.main.bounds.width*1.0/3, height: UIScreen.main.bounds.height*3/5))
    }
    
    
    
}
