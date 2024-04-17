//
//  CardView.swift
//  e-commerce
//
//  Created by Mohamed on 31/08/2022.
//

import UIKit

class CardView: UIView {
    
    @IBInspectable var cornerRadius: CGFloat = 10
    @IBInspectable var shadowOffsetWidth: CGFloat = 2
    @IBInspectable var shadowOffsetHeight:CGFloat = 3
    
    @IBInspectable var shadowOpacity: CGFloat = 0.5
    @IBInspectable var shadowColor: UIColor = .gray
    @IBInspectable var borderWidth:CGFloat = 0
    @IBInspectable var borderColor:UIColor?
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = cornerRadius
        layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight)
        layer.shadowOpacity = Float(shadowOpacity)
        
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor?.cgColor
        
        layer.shadowColor = shadowColor.cgColor
        let shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: 10)
        layer.shadowPath = shadowPath.cgPath
        
    }
    
    
}
