//
//  Helper.swift
//  NewProject
//
//  Created by Сергей Смирнов on 08.09.2024.
//

import Foundation

class Helper {
    private var people: [User] = []
      
    func addPerson(_ person: User) {
        people.append(person)
    }
    
    func getPeople() -> [User] {
        people
    }
}
