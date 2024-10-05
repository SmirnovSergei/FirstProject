//
//  Add-Views.swift
//  NewProject
//
//  Created by Сергей Смирнов on 04.10.2024.
//

import UIKit

extension UIView {
    func addViews(_ views: UIView...) {
        
        for view in views {
            addSubview(view)
        }
    }
}

