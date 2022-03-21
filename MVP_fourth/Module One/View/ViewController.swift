//
//  ViewController.swift
//  MVP_fourth
//
//  Created by AnatoliiOstapenko on 21.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let presenter = Presenter()
    var array: [CryptoModel] = []
    weak var viewOutDelegate: ViewOutDelegate?
    var counter = 0
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var tickerLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.setViewInputDelegate(viewInputDelegate: self) // pass viewcontroller to presenter
        viewOutDelegate = presenter
        viewOutDelegate?.getData()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
    }
    
}
// MARK: - ViewInput Delegate
extension ViewController: ViewInputDelegate {
    func setupInitialState() {
        displayData(index: counter)
    }
    
    func setupData(array: [CryptoModel]) {
        self.array = array
    }
    
    func displayData(index: Int) {
        if array.count >= 0 && counter <= array.count - 1 && counter >= 0 {
            nameLabel.text = array[index].name
            tickerLabel.text = array[index].ticker
            valueLabel.text = String(array[index].value)
        } else { print("display data fails")}
    }
    
    
}

