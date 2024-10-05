//
//  Add-Stack-Views.swift
//  NewProject
//
//  Created by Сергей Смирнов on 03.10.2024.
//

import UIKit

extension UIStackView {
    func addStackViews(_ views: UIView...) {
        
        for view in views {
            addArrangedSubview(view)
        }
    }
}
