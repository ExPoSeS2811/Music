import UIKit

/// `LoginTextField` is a subclass of `UITextField` customized for the login screen.
/// It sets the default font, text color, and other UI related configurations.

class BaseTextField: UITextField {
    let padding = UIEdgeInsets(top: 14, left: 16, bottom: 14, right: 16)
    
    init(placeholder: String) {
        super.init(frame: .zero)
        self.placeholder = placeholder
        self.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        self.textColor = .systemGray4
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.systemGray5.cgColor
        self.layer.cornerRadius = 12
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

/// `LoginPasswordTextField` is a subclass of `LoginTextField` customized for password input.
/// It adds a right view with an "eye" button for toggling password visibility.
class LoginPasswordTextField: BaseTextField {
    init() {
        super.init(placeholder: "Password")
        
        let eyeButton = UIButton(type: .custom)
        eyeButton.setImage(UIImage(systemName: "eye.fill"), for: .normal)
        eyeButton.frame = CGRect(x: CGFloat(self.frame.size.width - 25), y: CGFloat(5), width: CGFloat(16), height: CGFloat(16))
        eyeButton.tintColor = .systemGray2
        self.rightView = eyeButton
        self.rightViewMode = .always
    }
    
    func setActionForEyeButton(_ target: Any?, action: Selector) {
        guard let eyeButton = self.rightView as? UIButton else { return }
        eyeButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
