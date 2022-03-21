//
//  Presenter.swift
//  MVP_fourth
//
//  Created by AnatoliiOstapenko on 21.03.2022.
//

import Foundation

class Presenter {
    weak var viewInputDelegate: ViewInputDelegate?
    var testData = CryptoModel.testData
    
    func setViewInputDelegate(viewInputDelegate: ViewInputDelegate?) {
        self.viewInputDelegate = viewInputDelegate
    }
    
    func loadTestData() {
        viewInputDelegate?.setupData(array: testData)
    }
}

extension Presenter: ViewOutDelegate {
    func getData() {
        loadTestData()
    }
    
    func saveData() {
    
    }
    
    
}
