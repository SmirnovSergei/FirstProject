//
//  CustomButton.swift
//  NewProject
//
//  Created by Сергей Смирнов on 01.10.2024.
//

import UIKit

class CustomButton: UIView {
    private let customButton = UIButton()
    
    init(buttonTitle: String, buttonColor: UIColor, showShadow: Bool) {
        super.init(frame: .zero)
        setupButton(buttonTitle: buttonTitle, buttonColor: buttonColor, showShadow: showShadow)
        
        if showShadow {
            setupShadow()
            layoutSubviews()
        }
        
        setupLayout()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Setup View
extension CustomButton {
    private func setupButton(buttonTitle: String, buttonColor: UIColor, showShadow: Bool) {
        customButton.setTitle(buttonTitle, for: .normal)
        customButton.setTitleColor(.black, for: .normal)
        customButton.backgroundColor = buttonColor
        
        addSubview(customButton)
    }
    
    private func setupShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize(width: 5, height: 5)
        layer.shadowRadius = 10
    }
}

// MARK: - Setup Layout
extension CustomButton {
    private func setupLayout() {
        customButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            customButton.topAnchor.constraint(equalTo: topAnchor),
            customButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            customButton.leadingAnchor.constraint(equalTo: leadingAnchor),
            customButton.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        let shadowPath = UIBezierPath(rect: bounds)
        layer.shadowPath = shadowPath.cgPath
    }
}
