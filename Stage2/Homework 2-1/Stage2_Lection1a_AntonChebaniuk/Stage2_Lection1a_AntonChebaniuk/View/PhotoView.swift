//
//  PhotoView.swift
//  Stage2_Lection1a_AntonChebaniuk
//
//  Created by Anton Chebaniuk on 17.01.2021.
//

import UIKit

class FriendPhoto: UIImageView {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = layer.frame.width / 2
        
    }
}

class PhotoView: UIView {

    @IBInspectable var shadowWidth: CGFloat = 0 {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var shadowHeight: CGFloat = 0 {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var shadowColor: UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1) {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var shadowOpacity: Float = 0.3 {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat = 3 {
        didSet {
            setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        layer.cornerRadius = layer.frame.width / 2
        
        layer.shadowOffset = CGSize(width: shadowWidth, height: shadowHeight)
        layer.shadowColor = shadowColor.cgColor
        layer.shadowOpacity = shadowOpacity
        layer.shadowRadius = shadowRadius
        
    }

}
