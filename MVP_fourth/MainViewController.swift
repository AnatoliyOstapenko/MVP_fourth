//
//  MainViewController.swift
//  MVP_fourth
//
//  Created by AnatoliiOstapenko on 22.03.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    let subView = UIView()
    let greatLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan

        configureUI()
    }
    
    func configureUI() {
        subViewCreate()
        greatLabelCreate()
    }
    
    func subViewCreate() {
        view.addSubview(subView)
        subView.subViewConstraints(view: view)
    }

    func greatLabelCreate() {
        subView.addSubview(greatLabel)
        greatLabel.greatLabelConfigure(label: greatLabel)
        greatLabel.greatLabelConstraints(view: subView)
    }
    
    
}
