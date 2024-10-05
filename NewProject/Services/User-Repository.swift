//
//  User-Repository.swift
//  NewProject
//
//  Created by Сергей Смирнов on 21.09.2024.
//

import Foundation

class UserRepository {
    
    func getUsersRequest() -> [User] {
        [User(
            login: "SmirnovS",
            password: "Password-1",
            userName: Person(
                name: "Сергей",
                lastName: "Смирнов"
            )
        ),
         User(
            login: "IvanovI",
            password: "Password-2",
            userName: Person(
                name: "Иван",
                lastName: "Иванов"
            )
         ),
         User(
            login: "SemenovS",
            password: "Password-3",
            userName: Person(
                name: "Семен",
                lastName: "Семенов"
            )
         ),
         User(
            login: "PetrovP",
            password: "Password-4",
            userName: Person(
                name: "Петр",
                lastName: "Петров"
            )
         )]
    }
}
