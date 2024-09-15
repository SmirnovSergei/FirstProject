//
//  Person-Data.swift
//  NewProject
//
//  Created by Сергей Смирнов on 15.09.2024.
//

import Foundation

struct Person {
    let name: String
    let lastName: String
    
    var fullName: String {
        lastName + " " + name
    }
}

struct User {
    let login: String
    let password: String
    
    var userName: Person
}
