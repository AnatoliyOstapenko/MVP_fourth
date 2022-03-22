//
//  UILabel+Ext.swift
//  MVP_fourth
//
//  Created by AnatoliiOstapenko on 22.03.2022.
//

import Foundation
import UIKit

extension UILabel {
    func greatLabelConfigure(label: UILabel) {
        label.text = "Welcome to my MVP project"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 28, weight: .thin)
    }
}
