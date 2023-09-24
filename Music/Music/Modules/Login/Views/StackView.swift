import UIKit

class BaseStackView: UIStackView {
    init(spacing: CGFloat = spacingUseDefault) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.axis = .vertical
        self.distribution = .fillEqually
        self.spacing = spacing
    }

    @available(*, unavailable)
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class RegisterLabelStackView: BaseStackView {
    init() {
        super.init(spacing: 16)
        self.distribution = .equalCentering
        self.alignment = .center
    }

    @available(*, unavailable)
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class OrContinueStackView: UIStackView {
    init() {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.axis = .horizontal
        self.spacing = 8
        self.alignment = .center

        let leftLine = UIView()
        leftLine.backgroundColor = .gray
        leftLine.translatesAutoresizingMaskIntoConstraints = false
        leftLine.heightAnchor.constraint(equalToConstant: 1).isActive = true

        let rightLine = UIView()
        rightLine.backgroundColor = .gray
        rightLine.translatesAutoresizingMaskIntoConstraints = false
        rightLine.heightAnchor.constraint(equalToConstant: 1).isActive = true

        let orLabel = UILabel()
        orLabel.text = "Or continue with"
        orLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        orLabel.textColor = .gray
        orLabel.textAlignment = .center
        orLabel.setContentHuggingPriority(.required, for: .horizontal)
        orLabel.setContentCompressionResistancePriority(.required, for: .horizontal)

        self.addArrangedSubview(leftLine)
        self.addArrangedSubview(orLabel)
        self.addArrangedSubview(rightLine)

        leftLine.widthAnchor.constraint(equalToConstant: 90).isActive = true
        rightLine.widthAnchor.constraint(equalToConstant: 90).isActive = true
    }

    @available(*, unavailable)
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
