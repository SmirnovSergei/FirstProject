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
    
//    func addMultipleUsers(numberOfUsers: Int) {
//        var newUser = addUser
//
//        for number in 1...numberOfUsers {
//            newUser
//        }
//    }
    
    func getPeople() -> [User] {
        people
    }
}
