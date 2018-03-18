//
//  AbedView.swift
//  SuperpositionMilkTea
//
//  Created by Arleen Liu on 3/18/18.
//  Copyright © 2018 Jannie Zhong. All rights reserved.
//

import Foundation
import UIKit

class AbedView:UIView {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        let color = UIColor.blue
        let cgrRect = CGRect(x: rect.minX, y: rect.minY, width: rect.width, height: rect.height)
        let newView = UIBezierPath(rect: cgrRect)
        print(newView.bounds)
        color.set()
        newView.lineWidth = 5
        newView.stroke()
}
}
