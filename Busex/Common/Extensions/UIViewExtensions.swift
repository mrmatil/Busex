//
//  UIViewExtensions.swift
//  Busex
//
//  Created by Mateusz Łukasiński on 02/06/2020.
//  Copyright © 2020 AIB. All rights reserved.
//

import Foundation
import UIKit

extension UIView {

    func dropShadow() {
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize(width: -1, height: 1)
        self.layer.shadowRadius = 1
//        self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = UIScreen.main.scale
    }
    
}
