//
//  Helper.swift
//  NewProject
//
//  Created by Сергей Смирнов on 08.09.2024.
//

import Foundation

class Helper {
    private var people: [User] = []
      
    func addUser(_ user: User) {
        people.append(user)
    }
    
    func addUsers(_ users: [User]) {
        for user in users {
            people.append(user)
        }
    }
    
    func getPeople() -> [User] {
        people
    }
}
