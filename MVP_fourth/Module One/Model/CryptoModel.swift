//
//  CryptoModel.swift
//  MVP_fourth
//
//  Created by AnatoliiOstapenko on 21.03.2022.
//

import Foundation

struct CryptoModel {
    let name: String
    let ticker: String
    let value: Int
}

extension CryptoModel {
    static var testData = [
        CryptoModel(name: "Bitcoin", ticker: "BTC", value: 55000),
        CryptoModel(name: "Citcoin", ticker: "CTC", value: 65000),
        CryptoModel(name: "Zitcoin", ticker: "ZTC", value: 75000),
        CryptoModel(name: "Kitcoin", ticker: "KTC", value: 85000),
        CryptoModel(name: "Litcoin", ticker: "LTC", value: 95000),
        CryptoModel(name: "Oitcoin", ticker: "OTC", value: 25000)
    ]
}
