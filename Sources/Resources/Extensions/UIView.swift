//
//  UIView.swift
//  RestaurantMenuApp
//
//  Created by Marcus Vinícius on 06/09/19.
//  Copyright © 2019 Marcus Vinícius. All rights reserved.
//

import UIKit

extension UIView {
    func addSubviews(_ views: [UIView]) {
        views.forEach { (view) in
            self.addSubview(view)
        }
    }
}
