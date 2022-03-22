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
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: view.topAnchor, constant: 120).isActive = true
        leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        heightAnchor.constraint(equalToConstant: 70).isActive = true
    }
    
    func greatLabelConstraints(view: UIView, label: UILabel) {
        label.text = "Welcome to my MVP project"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 28, weight: .thin)
        translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func buttonConstraints(view: UIView, button: UIButton) {
        button.setTitle("Start Game", for: .normal)
        layer.cornerRadius = 12
        backgroundColor = .systemRed
        translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        widthAnchor.constraint(equalToConstant: 120).isActive = true
        heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    func gameLabelConstraints(view: UIView, button: UIButton, label: UILabel) {
        label.text = "Paused"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 28, weight: .thin)
        translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        topAnchor.constraint(equalToSystemSpacingBelow: button.bottomAnchor, multiplier: 3).isActive = true
    }
}
