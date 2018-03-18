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
    
    var bot = UIView()
    var milk = UIView()
    var tea = UIView()
    var top = UIView()
    var ice = UIView()
    
    var fillColor = UIColor.white
    
    override init(frame: CGRect) {
        
        super.init(frame: CGRect(x: frameX, y: frameY, width: frameWidth, height: frameHeight))
        self.backgroundColor = UIColor.black
        
        bot = AbedView(frame: CGRect(x: frameX, y: frameY + frameHeight, width: frameWidth, height: currHeight))
        milk = AbedView(frame: CGRect(x: frameX, y: frameY + frameHeight, width: frameWidth, height: currHeight))
        tea = AbedView(frame: CGRect(x: frameX, y: frameY + frameHeight, width: frameWidth, height: currHeight))
        top = AbedView(frame: CGRect(x: frameX, y: frameY + frameHeight, width: frameWidth, height: currHeight))
        ice = AbedView(frame: CGRect(x: frameX, y: frameY + frameHeight, width: frameWidth, height: currHeight))
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
//    static func getCup() -> CupView {
//        return CupView();
//    }
    
    // call each time cup is used
    func setValues(percent: Double, num: Int) {
        
        switch num {
        case 5:
            print("working")
            fillColor = UIColor.purple
            fillColor.setFill()
            icePercent = (percent / 100.0)
            count = 5;
            
            ice = AbedView(frame: CGRect(x: frameX, y: frameY + frameHeight, width: frameWidth, height: (frameHeight*icePercent)))
            
            ice.backgroundColor = fillColor
        case 4:
            fillColor = UIColor.blue
            fillColor.setFill()
            topPercent = (percent / 100.0)
            count = 4;
            
            top = AbedView(frame: CGRect(x: frameX, y: frameY + frameHeight, width: frameWidth, height: (frameHeight*topPercent)))
            
            top.backgroundColor = fillColor
        case 3:
            fillColor = UIColor.green
            fillColor.setFill()
            teaPercent = (percent / 100.0)
            count = 3;
            
            tea = AbedView(frame: CGRect(x: frameX, y: frameY + frameHeight, width: frameWidth, height: (frameHeight*teaPercent)))
            
            tea.backgroundColor = fillColor
        case 2:
            fillColor = UIColor.orange
            fillColor.setFill()
            milkPercent = (percent / 100.0)
            count = 2;
            
             milk = AbedView(frame: CGRect(x: frameX, y: frameY + frameHeight, width: frameWidth, height: (frameHeight*milkPercent)))
            
            milk.backgroundColor = fillColor
        case 1:
            fillColor = UIColor.red
            fillColor.setFill()
            botPercent = (percent / 100.0)
            count = 1;
            
            bot = AbedView(frame: CGRect(x: frameX, y: frameY + frameHeight - (frameHeight*botPercent), width: frameWidth, height: (frameHeight*botPercent)))
            
            bot.backgroundColor = fillColor
        default:
            fillColor.setFill()
        }
        
        // let rect = CGRect(x: currX, y: currY, width: frameWidth, height: currHeight)
        
    }
    
    override func draw(_ frame: CGRect){
        super.draw(frame);
        
        currHeight = (botPercent)*frameHeight
        currY = currY-currHeight
        
//        for i in 0..<count {
//            // draw(CGRect(x: currX, y: currY, width: frameWidth, height: currHeight))
//
////            var drect = CGRect(x: currX, y: currY, width: frameWidth, height: currHeight)
////            // var bpath:UIBezierPath = UIBezierPath(rect: drect)
////
////            fillColor.set()
////            //   bpath.stroke()
//
//            if (i == 1) {
//                currHeight = (milkPercent)*frameHeight
//                currY = currY-currHeight
//            } else if (i == 2) {
//                currHeight = (teaPercent)*frameHeight
//                currY = currY-currHeight
//            } else if (i == 3) {
//                currHeight = (topPercent)*frameHeight
//                currY = currY-currHeight
//            } else if (i == 4) {
//                currHeight = (icePercent)*frameHeight
//                currY = currY-currHeight
//            }
//
//            let myView = UIView(frame: CGRect(x: currX, y: currY, width: frameWidth, height: currHeight))
//
//           myView.backgroundColor = fillColor
        
//    }
            self.addSubview(bot)
            self.insertSubview(milk, aboveSubview: bot)
            self.insertSubview(tea, aboveSubview: milk)
            self.insertSubview(top, aboveSubview: tea)
            self.insertSubview(ice, aboveSubview: top)
        
    }
    
    
}
