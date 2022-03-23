//
//  UserView.swift
//  MVP_fourth
//
//  Created by AnatoliiOstapenko on 23.03.2022.
//

import Foundation

protocol SecondPresenterView: AnyObject {
    func setUsers(users: [UserViewData] )
    func setEmptyUsers()
}

class SecondPresenter {
    let userService: UserService
    weak var view: SecondPresenterView?
    
    init(view: SecondPresenterView, userService: UserService) {
        self.view = view
        self.userService = userService
    }
    
    func getUsers() {
        userService.getUsers { <#[User]#> in
            <#code#>
        }
    }
}
