//
//  TestView.swift
//  Stage2_Lection1a_AntonChebaniuk
//
//  Created by Anton Chebaniuk on 14.01.2021.
//

import UIKit

@IBDesignable
class TestView: UIView {

    @IBInspectable
    var radius: CGFloat = 20 {
        didSet {
            setNeedsLayout()
        }
    }
    
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }
//        context.fill(CGRect(x: 0, y: 0, width: 50, height: 50))
        
//        let width = rect.width
//        let height = rect.height
//
//        let path = UIBezierPath()
//        path.move(to: CGPoint(x: width * 0.5, y: height * 0.2))
//        path.addLine(to: CGPoint(x: width * 0.3, y: height * 0.7))
//        path.addLine(to: CGPoint(x: width * 0.7, y: height * 0.7))
//        path.close()
//        path.fill()
        
        context.fillEllipse(in: CGRect(x: rect.midX - radius, y: rect.midY - radius, width: radius * 2, height: radius * 2))
    }

}
