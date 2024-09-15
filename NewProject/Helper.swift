//
//  Helper.swift
//  NewProject
//
//  Created by Сергей Смирнов on 08.09.2024.
//

import Foundation

struct Person {
    let name: String
    let lastName: String
    
    func getFullName() -> String {
        var fullName: String {
            lastName + " " + name
        }
        
        return fullName
    }
}

struct User {
    let login: String
    let password: String
    let userName: Person
}

class Helper {
    private var people: [User] = []
      
    func addPerson(_ person: User) {
        people.append(person)
    }
    
    func getPeople() -> [User] {
        people
    }
}
