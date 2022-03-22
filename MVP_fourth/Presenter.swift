//
//  Presenter.swift
//  MVP_fourth
//
//  Created by AnatoliiOstapenko on 22.03.2022.
//

import Foundation
//import UIKit

protocol PresenterView: AnyObject {
    func updateGame(_ model: GameViewData)
}

class Presenter {
    weak var view: PresenterView?
    
    init(with view: PresenterView) {
        self.view = view
    }
    
    let spaceInvaders = Game(name: "Space Invaders", year: "1978", author: "Tomohiro Nishikado")
    
    @objc func startGame() {
        let game = GameViewData(name: spaceInvaders.name)
        view?.updateGame(game)
    }
    
}
