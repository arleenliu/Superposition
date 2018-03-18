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
    
    
    // call each time cup is used
    func setValues(percent: Double, vc: UIViewController) {
        
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
        
        currHeight = (botPercent)*frameHeight
        currY = currY-currHeight
        
        for i in 0..<count {
           // draw(CGRect(x: currX, y: currY, width: frameWidth, height: currHeight))
            
            var drect = CGRect(x: currX, y: currY, width: frameWidth, height: currHeight)
            // var bpath:UIBezierPath = UIBezierPath(rect: drect)
            
            fillColor.set()
          //   bpath.stroke()
            
            if (i == 1) {
            currHeight = (milkPercent)*frameHeight
            currY = currY-currHeight
            } else if (i == 2) {
                currHeight = (teaPercent)*frameHeight
                currY = currY-currHeight
            } else if (i == 3) {
                currHeight = (topPercent)*frameHeight
                currY = currY-currHeight
            } else if (i == 4) {
                currHeight = (icePercent)*frameHeight
                currY = currY-currHeight
            }
            
            let myView = UIView(frame: drect)
            
            self.addSubview(myView)
        }
        
        // let rect = CGRect(x: currX, y: currY, width: frameWidth, height: currHeight)
        
    }
    
    override func draw(_ frame: CGRect){
        super.draw(self.frame);
        
        currHeight = (botPercent)*frameHeight
        currY = currY-currHeight
        
        for i in 0..<count {
            // draw(CGRect(x: currX, y: currY, width: frameWidth, height: currHeight))
            
            var drect = CGRect(x: currX, y: currY, width: frameWidth, height: currHeight)
            // var bpath:UIBezierPath = UIBezierPath(rect: drect)
            
            fillColor.set()
            //   bpath.stroke()
            
            if (i == 1) {
                currHeight = (milkPercent)*frameHeight
                currY = currY-currHeight
            } else if (i == 2) {
                currHeight = (teaPercent)*frameHeight
                currY = currY-currHeight
            } else if (i == 3) {
                currHeight = (topPercent)*frameHeight
                currY = currY-currHeight
            } else if (i == 4) {
                currHeight = (icePercent)*frameHeight
                currY = currY-currHeight
            }
            
            let myView = UIView(frame: drect)
            
            self.addSubview(myView)
        }
    }
    
    
    
}
