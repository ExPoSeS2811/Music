import UIKit

class CreateAccountTextField: BaseTextField {
    override init(placeholder: String, cornerRadius: CGFloat) {
        super.init(placeholder: placeholder, cornerRadius: cornerRadius)
        
        self.placeholder = placeholder
        self.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.cornerRadius = 24
        self.layer.borderWidth = 0
        self.backgroundColor = UIColor(red: 0.96, green: 0.97, blue: 1, alpha: 1)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
