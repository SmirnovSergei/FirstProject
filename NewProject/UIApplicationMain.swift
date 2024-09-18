//
//  UIApplicationMain.swift
//  NewProject
//
//  Created by Сергей Смирнов on 18.09.2024.
//

import Foundation

func UIApplicationMain() -> Int {
    let application = UIApplication()
    let appDelegate = AppDelegate()
    
    application.delegate = appDelegate
    
    application.run() // Запуск RunLoop
}
