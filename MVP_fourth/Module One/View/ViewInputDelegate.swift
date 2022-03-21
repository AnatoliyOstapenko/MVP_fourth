//
//  ViewInputDelegate.swift
//  MVP_fourth
//
//  Created by AnatoliiOstapenko on 21.03.2022.
//

import Foundation

protocol ViewInputDelegate: AnyObject {
    func setupInitialState()
    func setupData(with testData: [CryptoModel])
    func displayData(index: Int)
}
