//
//  Helper.swift
//  NewProject
//
//  Created by Сергей Смирнов on 08.09.2024.
//

import Foundation

class Person {
    var name: String
    var lastName: String
    
    var fullName: String {
        lastName + " " + name
    }
    
    init(name: String, lastName: String) {
        self.name = name
        self.lastName = name
    }
}

class Helper {
    private var people: [Person] = []
      
    func addPerson(_ person: Person) {
        people.append(person)
    }
    
    func getPeople() -> [Person] {
        people
    }
}
