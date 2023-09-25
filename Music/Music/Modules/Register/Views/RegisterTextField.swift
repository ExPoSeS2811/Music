//
//  RegisterTextField.swift
//  Music
//
//  Created by Gleb Rasskazov on 25.09.2023.
//

import UIKit

class RegisterTextField: BaseTextField {
    override init(placeholder: String) {
        super.init(placeholder: placeholder)
        
        self.placeholder = placeholder
        self.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        self.textColor = .systemGray4
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.borderColor = UIColor.systemGray5.cgColor
        self.layer.cornerRadius = 24
        self.backgroundColor = .systemGray6
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func rightViewRect(forBounds bounds: CGRect) -> CGRect {
        var textRect = super.rightViewRect(forBounds: bounds)
        textRect.origin.x -= padding.right
        
        return textRect
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
