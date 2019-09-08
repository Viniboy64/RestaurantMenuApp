//
//  Label.swift
//  RestaurantMenuApp
//
//  Created by Marcus Vinícius on 07/09/19.
//  Copyright © 2019 Marcus Vinícius. All rights reserved.
//

import UIKit

class Label: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .red
        
        layer.masksToBounds = true
        layer.cornerRadius = 8.0
        
        // This enables autolayout to class.
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder aDecoder: ) has not been implemented.")
    }
}
