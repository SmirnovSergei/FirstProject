//
//  Person-Data.swift
//  NewProject
//
//  Created by Сергей Смирнов on 15.09.2024.
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
        self.lastName = lastName
    }
}
