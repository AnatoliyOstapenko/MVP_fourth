//
//  UIView+Ext.swift
//  MVP_fourth
//
//  Created by AnatoliiOstapenko on 22.03.2022.
//

import Foundation
import UIKit

extension UIView {
    
    func subViewConstraints(view: UIView) {
        backgroundColor = .yellow
        layer.cornerRadius = 24
        // constraints
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: view.topAnchor, constant: 120).isActive = true
        leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        heightAnchor.constraint(equalToConstant: 70).isActive = true
    }
    
    func greatLabelConstraints(view: UIView) { 
        translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
