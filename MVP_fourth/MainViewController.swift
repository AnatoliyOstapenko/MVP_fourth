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
    
    lazy var presenter = Presenter(with: self)

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
    }
    
    
    func configureUI() {
        subViewCreate()
        greatLabelCreate()
        buttonCreate()
        gameLabelCreate()
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
    func buttonCreate() {
        view.addSubview(button)
        button.setTitle("Start Game", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    func gameLabelCreate() {
        view.addSubview(gameLabel)
        gameLabel.text = "Paused"
        gameLabel.translatesAutoresizingMaskIntoConstraints = false
        gameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        gameLabel.topAnchor.constraint(equalToSystemSpacingBelow: button.bottomAnchor, multiplier: 3).isActive = true
    }
    
    
}
extension MainViewController: PresenterView {
    func updateGame(_ model: GameViewData) {
        gameLabel.text = model.name
        view.backgroundColor = .yellow
    }
    
    
}
