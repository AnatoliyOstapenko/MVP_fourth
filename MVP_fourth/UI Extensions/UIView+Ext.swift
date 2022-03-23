//
//  UIView+Ext.swift
//  MVP_fourth
//
//  Created by AnatoliiOstapenko on 22.03.2022.
//

import Foundation
import UIKit

extension UIView {
    
    func subViewConstraints(view: UIView, subView: UIView) {
        subView.backgroundColor = .yellow
        subView.layer.cornerRadius = 24
        subView.translatesAutoresizingMaskIntoConstraints = false
        subView.topAnchor.constraint(equalTo: view.topAnchor, constant: 120).isActive = true
        subView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        subView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        subView.heightAnchor.constraint(equalToConstant: 70).isActive = true
    }
    
    func greatLabelConstraints(view: UIView, label: UILabel, subView: UIView) {
        subView.addSubview(label)
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
    func secondViewButtonConstraints(view: UIView, button: UIButton, subView: UIView) {
        view.addSubview(button)
        button.setTitle("next screen", for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 14
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerYAnchor.constraint(equalTo: subView.centerYAnchor).isActive = true
        button.centerXAnchor.constraint(equalTo: subView.centerXAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.widthAnchor.constraint(equalToConstant: 120).isActive = true
    }
}
