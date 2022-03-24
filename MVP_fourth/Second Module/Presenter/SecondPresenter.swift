//
//  UserView.swift
//  MVP_fourth
//
//  Created by AnatoliiOstapenko on 23.03.2022.
//

import Foundation

protocol SecondPresenterView: AnyObject {
    func setUsers(users: [UserViewData])
}

class SecondPresenter {
    private let userService: UserService
    weak var view: SecondPresenterView?
    
    init(view: SecondPresenterView, userService: UserService) {
        self.view = view
        self.userService = userService
    }
    
    func getUsers() {
        userService.getUsers { [weak self] users in
            
            let mappedUsers = users.map {
                return UserViewData(name: "\($0.firstName) \($0.lastName)", age: "\($0.age) years old")
            }
            self?.view?.setUsers(users: mappedUsers)
        }
    }
}
