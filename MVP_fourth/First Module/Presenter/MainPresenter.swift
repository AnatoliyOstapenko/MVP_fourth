//
//  Presenter.swift
//  MVP_fourth
//
//  Created by AnatoliiOstapenko on 22.03.2022.
//

import Foundation
//import UIKit

protocol MainPresenterView: AnyObject {
    func updateGame(_ model: GameViewData)
}

class MainPresenter {

    weak var view: MainPresenterView?
    init(with view: MainPresenterView) {
        self.view = view
    }
    
    let spaceInvaders = Game(name: "Space Invaders", year: "1978", author: "Tomohiro Nishikado")
        
    func startGame() {
        let game = GameViewData(name: spaceInvaders.name)
        view?.updateGame(game)
    }
    
}
