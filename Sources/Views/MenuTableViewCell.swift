//
//  MenuTableViewCell.swift
//  RestaurantMenuApp
//
//  Created by Marcus Vinícius on 06/09/19.
//  Copyright © 2019 Marcus Vinícius. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {
    var dish: Dish? {
        didSet {
            guard let unwrappedDish = dish else { return }
            
            dishImageName.image = UIImage(named: unwrappedDish.dishImageName)
            dishName.text = unwrappedDish.dishName
            dishDescription.text = unwrappedDish.dishDescription
            dishPrice.text = "\(unwrappedDish.dishPrice)"
        }
    }
    
    private let dishImageName: UIImageView = {
        let imageView: UIImageView = UIImageView()
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 16.0
        
        imageView.backgroundColor = .red
        
        // This enables autolayout to imageView.
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private let dishName: UILabel = {
        let label: UILabel = UILabel()
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 8.0
        
        label.backgroundColor = .red
        
        
        // This enables autolayout to label.
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let dishDescription: UILabel = {
        let label: UILabel = UILabel()
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 8.0
        
        label.backgroundColor = .red
        
        // This enables autolayout to label.
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let dishPrice: UILabel = {
        let label: UILabel = UILabel()
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 8.0
        
        label.backgroundColor = .red
        
        // This enables autolayout to label.
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupLayout()
    }
    
    private func setupLayout() {
        // This is a auxiliar view for the main content.
        let containerView: UIView = {
            let view: UIView = UIView()
            view.layer.masksToBounds = true
            view.layer.cornerRadius = 16.0
            
            view.backgroundColor = .blue
            
            // This enables autolayout to view.
            view.translatesAutoresizingMaskIntoConstraints = false
            
            return view
        }()
        
        // Add subviews to cell.
        addSubviews([containerView, dishImageName])
        
        // Add subviews to containerView.
        containerView.addSubviews([dishName, dishDescription, dishPrice])
        
        // Constraints for containerView, dishImageName, dishName, dishDescription, dishPrice.
        NSLayoutConstraint.activate(
            [
                containerView.topAnchor.constraint(equalTo: topAnchor, constant: 8.0),
                containerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8.0),
                containerView.leadingAnchor.constraint(equalTo: dishImageName.leadingAnchor, constant: 40.0),
                containerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.0),
                
                dishImageName.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 8.0),
                dishImageName.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8.0),
                dishImageName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.0),
                dishImageName.widthAnchor.constraint(equalToConstant: 96.0),
                
                dishName.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 8.0),
                dishName.bottomAnchor.constraint(equalTo: containerView.centerYAnchor, constant: 8.0),
                dishName.leadingAnchor.constraint(equalTo: dishImageName.trailingAnchor, constant: 8.0),
                dishName.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -8.0),
                
                dishDescription.topAnchor.constraint(equalTo: containerView.centerYAnchor, constant: 16.0),
                dishDescription.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8.0),
                dishDescription.leadingAnchor.constraint(equalTo: dishImageName.trailingAnchor, constant: 8.0),
                dishDescription.trailingAnchor.constraint(equalTo: dishPrice.leadingAnchor, constant: -8.0),
                
                dishPrice.topAnchor.constraint(equalTo: containerView.centerYAnchor, constant: 16.0),
                dishPrice.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8.0),
                dishPrice.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -8.0),
                dishPrice.widthAnchor.constraint(equalToConstant: 64.0)
            ]
        )
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder aDecoder: ) has not been implemented.")
    }
}
