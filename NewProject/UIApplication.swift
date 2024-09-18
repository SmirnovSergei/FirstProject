//
//  UIApplication.swift
//  NewProject
//
//  Created by Сергей Смирнов on 18.09.2024.
//

import Foundation

enum EventType {
    case connectScene // Событие подключения новой сцены
    case userTappedButton
    case didEnterBackground
}

class UIApplication {
    
    var delegate: AppDelegate?
    private var events: [EventType] = []
    private var isRunning: Bool = false // Переменная для определения активного состояния приложения
    
    func run() {
        isRunning = true
        
        delegate?.application(self, didFinishLaunchingWithOptions: nil)
        
        while isRunning {
            if let event = getNextEvent() {
                switch event {
                case .connectScene:
                    // Здесь происходит настройка параметров для данного метода
                    let configuration = delegate?.application(self, configurationForConnecting: _, options: _)
                    let sceneDelegate = SceneDelegate()
                    
                    sceneDelegate.configure(with: configuration)
                    // Здесь также происходит настройка параметров и передача их в метод:
                    sceneDelegate.scene(scene, willConnectTo: _, options: _)
                case .userTappedButton:
                    break
                case .didEnterBackground:
                    break
                }
            }
        }
    }
    
    private func getNextEvent() -> EventType? {
        if events.isEmpty {
            return nil
        } else {
            return events.removeFirst()
        }
    }
}
