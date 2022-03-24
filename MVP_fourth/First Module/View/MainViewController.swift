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
    
    var startGameButton = UIButton()
    var gameLabel = UILabel()
    var nextScreenButton = UIButton()
   
    lazy var presenter = MainPresenter(with: self)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        nextScreenButton.isHidden = true

        configureUI()

    }

    func configureUI() {
        subViewConfigure()
        greatLabelConfigure()
        startGameButtonConfigure()
        gameLabelConfigure()
        nextScreenButtonConfigure()
    }
    func nextScreenButtonConfigure() {
        nextScreenButton.secondViewButtonConstraints(view: view, button: nextScreenButton, subView: subView)
        nextScreenButton.addTarget(self, action: #selector(nextScreenButtonPressed(sender:)), for: .touchUpInside)
    }
    func subViewConfigure() {
        view.addSubview(subView)
        subView.subViewConstraints(view: view, subView: subView)
    }

    func greatLabelConfigure() {
        greatLabel.greatLabelConstraints(view: subView, label: greatLabel, subView: subView)
    }
    func startGameButtonConfigure() {
        view.addSubview(startGameButton)
        startGameButton.buttonConstraints(view: view, button: startGameButton)
        startGameButton.addTarget(self, action: #selector(startGameButtonPressed(sender:)), for: .touchUpInside)
    }
    func gameLabelConfigure() {
        view.addSubview(gameLabel)
        gameLabel.gameLabelConstraints(view: view, button: startGameButton, label: gameLabel)
    }
    
    @objc func startGameButtonPressed(sender: Any?) {
        presenter.startGame()
        greatLabel.isHidden = true
        nextScreenButton.isHidden = false
    }
    
    @objc func nextScreenButtonPressed(sender: Any?) {
        let vc = SecondViewController()
        navigationController?.pushViewController(vc, animated: true)
        //present(vc, animated: true, completion: nil) // no NC, go through directly
    }
    
}
extension MainViewController: MainPresenterView {
    
    func updateGame(_ model: GameViewData) {
        gameLabel.text = model.name
        view.backgroundColor = .yellow
    }
    
    
}

