//
//  OrderViewController.swift
//  SuperpositionMilkTea
//
//  Created by Jannie Zhong on 3/17/18.
//  Copyright © 2018 Jannie Zhong. All rights reserved.
//

import Foundation
import UIKit

class OrderViewController : UIViewController /*UITableViewDelegate, UITableViewDataSource*/ {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "NEARBY STORES"
        self.view.backgroundColor = UIColor.white
        
        setupOrderButton()
        
//        let addOrderButton = UIButton(barButtonSystemItem: .add, target: self, action: #selector(addOrderAction))
//        self.navigationItem.rightBarButtonItem = addOrderButton
        
        
//        let addOrderButton = UIButton(/*button: .add, target: self, action:, #selector(addOrderAction)*/);
//        self.navigationController = addOrderButton
//
    }
    
    
    @objc private func addOrderAction() {
        let orderViewController = InitChoiceViewController() //QUOIIIII
        navigationController?.pushViewController(orderViewController, animated: true)
    }
    
    func setupOrderButton() {
        let orderButton = UIButton(frame: CGRect(x: 0, y: UIScreen.main.bounds.height * 1/12, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 1/4))
        
        
        //orderButton.contentEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        orderButton.setTitleColor(UIColor.black, for: .normal)
        orderButton.backgroundColor = UIColor.green
        orderButton.layer.cornerRadius = 3.0
        orderButton.setTitle("Horizons School : Order", for: .normal)
        orderButton.addTarget(self, action: #selector(addOrderAction), for: .touchUpInside)
        self.view.addSubview(orderButton)
        
    }
}
