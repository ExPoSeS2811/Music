import UIKit

class CreateAccountViewController: UIViewController {
    private lazy var createAccountLabelStackView: UIStackView = {
        let label1 = UILabel()
        label1.text = "Create account"
        label1.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label1.textColor = .white
        label1.textAlignment = .center
        
        let label2 = UILabel()
        label2.text = "Lorem ipsum dolor sit amet"
        label2.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label2.textColor = .white
        label2.textAlignment = .center
        
        let stackView = UIStackView(arrangedSubviews: [label1, label2])
        
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.alignment = .center
        return stackView
    }()
    
    private lazy var mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = 64
        return stackView
    }()
    
    private lazy var contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 32
        view.layer.cornerCurve = .continuous
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private lazy var contentViewStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView
        
        return stackView
    }()
    
    private lazy var loginButtonStackView: UIStackView = BaseStackView(spacing: 16)
    private lazy var orContinueStackView: UIStackView = OrContinueStackView()
    private lazy var loginButton: UIButton = LoginButton(title: "Sign in")
    private lazy var loginWithGoogleButton: UIButton = LoginWithGoogleButton(title: "Continue with Google")

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .systemBlue
        view.addSubview(mainStackView)
        mainStackView.addArrangedSubview(createAccountLabelStackView)
        mainStackView.addArrangedSubview(contentView)
        view.addSubview(contentViewStackView)
        contentViewStackView.addArrangedSubview(loginButton)
        contentViewStackView.addArrangedSubview(orContinueStackView)
        contentViewStackView.addArrangedSubview(loginWithGoogleButton)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            createAccountLabelStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            createAccountLabelStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
        NSLayoutConstraint.activate([
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            contentViewStackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 32),
            contentViewStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            contentViewStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            contentViewStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
        ])
    }
}
