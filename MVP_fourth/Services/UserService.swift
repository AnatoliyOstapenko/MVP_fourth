//
//  UserService.swift
//  MVP_fourth
//
//  Created by AnatoliiOstapenko on 22.03.2022.
//

import Foundation

class UserService {
    
    func getUsers(completion: @escaping([User]) -> Void) {
        let users = [
            User(firstName: "Kevin", lastName: "Spacy", age: 56),
            User(firstName: "Alan", lastName: "Bradley", age: 24),
            User(firstName: "Winston", lastName: "Smith", age: 42)
        ]
        completion(users)
    }
}
