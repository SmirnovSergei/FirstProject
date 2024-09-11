//
//  Helper.swift
//  NewProject
//
//  Created by Сергей Смирнов on 08.09.2024.
//

import Foundation

class Person {
    var name = ""
    var lastName = ""
    
    var fullName: String {
        lastName + " " + name
    }
}

class Helper: Person {
    private var people: [String] = []
      
    func addPerson(name: String, lastName: String) {
        self.name = name
        self.lastName = lastName
        people.append(fullName)
    }
    
    func getPeople() -> [String] {
        people
    }
}
