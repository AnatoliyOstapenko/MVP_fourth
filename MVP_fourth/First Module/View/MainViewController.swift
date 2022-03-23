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
    
    var button = UIButton()
    var gameLabel = UILabel()
   
    lazy var presenter = MainPresenter(with: self)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan

        configureUI()
        layout()
    }
    
    func layout() {
        button.addTarget(self, action: #selector(startGame(sender:)), for: .primaryActionTriggered)
    }
    
    @objc func startGame(sender: Any?) {
        presenter.startGame()
        greatLabel.isHidden = true
    }

    func configureUI() {
        subViewConfigure()
        greatLabelConfigure()
        buttonConfigure()
        gameLabelConfigure()
    }
    
    func subViewConfigure() {
        view.addSubview(subView)
        subView.subViewConstraints(view: view)
    }

    func greatLabelConfigure() {
        subView.addSubview(greatLabel)
        greatLabel.greatLabelConstraints(view: subView, label: greatLabel)
    }
    func buttonConfigure() {
        view.addSubview(button)
        button.buttonConstraints(view: view, button: button)
    }
    func gameLabelConfigure() {
        view.addSubview(gameLabel)
        gameLabel.gameLabelConstraints(view: view, button: button, label: gameLabel)
    }
    
    
}
extension MainViewController: MainPresenterView {
    
    func updateGame(_ model: GameViewData) {
        gameLabel.text = model.name
        view.backgroundColor = .yellow
    }
    
    
}

