import UIKit

class LoginButton: UIButton {
    init(title: String) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.setTitle(title, for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        self.setTitleColor(.white, for: .normal)
        self.backgroundColor = .systemBlue
        self.layer.cornerRadius = 24
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class LoginWithGoogleButton: LoginButton {
    override init(title: String) {
        super.init(title: title)
        
        var config = UIButton.Configuration.plain()
        config.image = UIImage(named: "google_icon")?.withRenderingMode(.alwaysOriginal)
        config.titlePadding = 12
        config.imagePadding = 12

        self.configuration = config
        
        self.backgroundColor = .clear
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = 24

        let attributedTitle = NSAttributedString(string: title, attributes: [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16, weight: .semibold),
            NSAttributedString.Key.foregroundColor: UIColor.black
        ])
        
        self.setAttributedTitle(attributedTitle, for: .normal)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

