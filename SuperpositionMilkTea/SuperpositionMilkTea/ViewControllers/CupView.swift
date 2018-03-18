//
//  CupView.swift
//  SuperpositionMilkTea
//
//  Created by Jannie Zhong on 3/17/18.
//  Copyright © 2018 Jannie Zhong. All rights reserved.
//

import Foundation
import UIKit

//let cup = CGRect(x: UIScreen.main.bounds.width*1.0/3, y: UIScreen.main.bounds.height*1/5, width: UIScreen.main.bounds.width*1.0/3, height: UIScreen.main.bounds.height*3/5)
//let myView = UIView(frame: cup);


class CupView : UIView /*UITableViewDelegate, UITableViewDataSource*/ {
    
    let frameY = Double(UIScreen.main.bounds.height*1/5)
    let frameX = Double(UIScreen.main.bounds.width*1.0/3)
    let frameHeight = Double(UIScreen.main.bounds.height*3/5)
    let frameWidth = Double(UIScreen.main.bounds.width*1.0/3)
    lazy var currX = frameX
    lazy var currY = frameY + frameHeight
    lazy var currHeight = 0.0
    var count = 0
    var botPercent = 0.0;
    var milkPercent = 0.0;
    var teaPercent = 0.0;
    var topPercent = 0.0;
    var icePercent = 0.0;
    
    var fillColor = UIColor.white
    
    override init(frame: CGRect) {
        super.init(frame: CGRect(x: frameX, y: frameY, width: frameWidth, height: frameHeight))
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func drawRect(percent: Double, color: UIColor, vc: UIViewController) {
        
        currHeight = (percent / 100.0)*frameHeight
        currY = currY-currHeight
        
        switch vc {
        case is IceViewController:
            fillColor = UIColor.purple
            fillColor.setFill()
            icePercent = (percent / 100.0)
            count = 5;
        case is TopViewController:
            fillColor = UIColor.blue
            fillColor.setFill()
            topPercent = (percent / 100.0)
            count = 4;
        case is TeaViewController:
            fillColor = UIColor.green
            fillColor.setFill()
            teaPercent = (percent / 100.0)
            count = 3;
        case is MilkViewController:
            fillColor = UIColor.orange
            fillColor.setFill()
            milkPercent = (percent / 100.0)
            count = 2;
        case is BotViewController:
            fillColor = UIColor.red
            fillColor.setFill()
            botPercent = (percent / 100.0)
            count = 1;
        default:
            fillColor.setFill()
        }
        
        var prevX = 0;
        var prevY = 0;
        
        for i in 0..<count {
            
        }
        
        let rect = CGRect(x: currX, y: currY, width: frameWidth, height: currHeight)
        let myView = UIView(frame: rect)
        
        
        
    }
    
    
    override func draw(_ rect: CGRect) {
        
        let fillColor = UIColor(red: 0.00, green: 0.59, blue: 1.0, alpha: 1.0)
        fillColor.setFill()
    }
    
//    override func draw(percent: Double, whichChoice: Int){
//        super.draw(<#T##CGRect#>);
//    }
    
    
    
}
