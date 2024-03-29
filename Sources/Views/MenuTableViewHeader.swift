//
//  MenuTableViewHeader.swift
//  RestaurantMenuApp
//
//  Created by Marcus Vinícius on 07/09/19.
//  Copyright © 2019 Marcus Vinícius. All rights reserved.
//

import UIKit

class MenuTableViewHeader: UIView {
    private let classifierImageName: UIImageView = UIImageView(backgroundColor: .red, cornerRadius: 8.0)
    private let classifierName: UILabel = UILabel(backgroundColor: .red, cornerRadius: 4.0)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .green
        
        setupLayout()
    }
    
    private func setupLayout() {
        // This is a auxiliar view for the main content.
        let contentView: UIView = UIView(backgroundColor: .blue, cornerRadius: 8.0)
        
        // Add subviews to class.
        addSubviews([contentView, classifierImageName])
        
        // Add subview to contentView.
        contentView.addSubview(classifierName)
        
        // Contraints for contentView, classifierImageName, classifierName.
        NSLayoutConstraint.activate(
            [
                contentView.topAnchor.constraint(equalTo: topAnchor, constant: 8.0),
                contentView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8.0),
                contentView.leadingAnchor.constraint(equalTo: classifierImageName.leadingAnchor, constant: 20.0),
                contentView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0),
                
                classifierImageName.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4.0),
                classifierImageName.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -4.0),
                classifierImageName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
                classifierImageName.widthAnchor.constraint(equalToConstant: 40.0),
                
                classifierName.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8.0),
                classifierName.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8.0),
                classifierName.leadingAnchor.constraint(equalTo: classifierImageName.trailingAnchor, constant: 8.0),
                classifierName.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8.0)
            ]
        )
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder aDecoder: ) has not been implemented.")
    }
}
