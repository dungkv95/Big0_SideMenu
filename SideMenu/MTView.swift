//
//  MTView.swift
//  SideMenu
//
//  Created by Trương Thắng on 3/12/17.
//  Copyright © 2017 Trương Thắng. All rights reserved.
//

import UIKit
@IBDesignable
class MTView: UIView {

    @IBInspectable
    var shadowColor: UIColor = UIColor.black{
        didSet {
            self.layer.shadowColor = UIColor.black.cgColor
        }
    }
    
    @IBInspectable
    var shadowOpacity: CGFloat = 0.8 {
        didSet {
            self.layer.shadowOpacity = Float(shadowOpacity)
        }
    }
    @IBInspectable
    var shadowOffset: CGSize = CGSize.zero {
        didSet {
            self.layer.shadowOffset = shadowOffset
        }
    }
    @IBInspectable
    var shadowRadius: CGFloat = 0 {
        didSet {
            self.layer.shadowRadius = shadowRadius
        }
    }


}
