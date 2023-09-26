import UIKit

class SignInStackView: UIStackView {
    init() {
        super.init(frame: .zero)
        let label = UILabel()
        label.text = "Already have an account?"
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        label.textColor = .gray
        
        let registerButton = UIButton(type: .system)
        registerButton.setTitle("Sign in", for: .normal)
        registerButton.setTitleColor(.systemBlue, for: .normal)
        registerButton.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        
        
        self.axis = .horizontal
        self.distribution = .fillProportionally
        self.spacing = 4
        self.addArrangedSubviews(label)
        self.addArrangedSubviews(registerButton)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
