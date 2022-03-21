//
//  ViewController.swift
//  MVP_fourth
//
//  Created by AnatoliiOstapenko on 21.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let presenter = Presenter()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.setViewInputDelegate(viewInputDelegate: self) // pass viewcontroller to presenter
    }


}
// MARK: - ViewInput Delegate
extension ViewController: ViewInputDelegate {
    func setupInitialState() {
        <#code#>
    }
    
    func setupData(with testData: [CryptoModel]) {
        <#code#>
    }
    
    func displayData(index: Int) {
        <#code#>
    }
    
    
}

