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
    var secondViewButton = UIButton()
   
    lazy var presenter = MainPresenter(with: self)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        secondViewButton.isHidden = true

        configureUI()
        layout()
    }
    
    func layout() {
        button.addTarget(self, action: #selector(startGame(sender:)), for: .primaryActionTriggered)
        secondViewButton.addTarget(self, action: #selector(goToSecondView(sender:)), for: .primaryActionTriggered)
    }
    
    @objc func startGame(sender: Any?) {
        presenter.startGame()
        greatLabel.isHidden = true
        secondViewButton.isHidden = false
    }
    @objc func goToSecondView(sender: Any?) {
        let vc = SecondViewController()
        present(vc, animated: true, completion: nil)
    }

    func configureUI() {
        subViewConfigure()
        greatLabelConfigure()
        buttonConfigure()
        gameLabelConfigure()
        secondViewButtonConfigure()
    }
    func secondViewButtonConfigure() {
        secondViewButton.secondViewButtonConstraints(view: view, button: secondViewButton, subView: subView)
    }
    func subViewConfigure() {
        view.addSubview(subView)
        subView.subViewConstraints(view: view, subView: subView)
    }

    func greatLabelConfigure() {
        greatLabel.greatLabelConstraints(view: subView, label: greatLabel, subView: subView)
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

