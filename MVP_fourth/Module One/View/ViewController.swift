//
//  ViewController.swift
//  MVP_fourth
//
//  Created by AnatoliiOstapenko on 21.03.2022.
//

import UIKit

protocol DataDelegate {
    func printText(text: String)


}

class ViewController: UIViewController, DataDelegate {

    

    override func viewDidLoad() {
        super.viewDidLoad()
        perform(#selector(advance), with: nil, afterDelay: 3)
 
    }
    
    @objc func advance() {
        let vc = SecondViewController()
        vc.dataDelegate = self
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
        
    }
    
    func printText(text: String) {
        print("I print some text: \(text)")
    }
    
    
}

class SecondViewController: UIViewController {
    
    var dataDelegate: DataDelegate?
  
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        dataDelegate?.printText(text: "Hello World!")
    }
    
}

