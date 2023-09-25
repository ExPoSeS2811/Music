import UIKit

class CreateAccountViewController: UIViewController {
    private lazy var greetingStackView: UIStackView = {
        let createAccountLabel = UILabel(text: "Create account", font: .boldSystemFont(ofSize: 24), textColor: .white)
        let createAccountDescriptionLabel = UILabel(text: "Create a new account to start using Music", font: .systemFont(ofSize: 16), textColor: .white)
        
        let stackView = UIStackView(arrangedSubviews: [createAccountLabel, createAccountDescriptionLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 8
        
        return stackView
    }()
    
    private lazy var emailLabel: UILabel = .init(text: "Email", font: .systemFont(ofSize: 16), textColor: .systemGray, textAlignment: .left)
    
    private lazy var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 24
        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        return view
    }()
    
    private lazy var mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 32
        return stackView
    }()
    
    private lazy var emailTextField = CreateAccountTextField(placeholder: "Enter your email address")
    private lazy var orContinueStackView: UIStackView = OrContinueStackView()
    private lazy var loginButton: UIButton = {
        let button = LoginButton(title: "Sign up with email")
        button.addTarget(self, action: #selector(signUpButtonPressed(_:)), for: .touchUpInside)
        return button
    }()
    private lazy var loginWithGoogleButton: UIButton = LoginWithGoogleButton(title: "Continue with Google")

    private lazy var registerStackView: UIStackView = {
        let label = UILabel()
        label.text = "Already have an account?"
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .gray

        let registerButton = UIButton(type: .system)
        registerButton.setTitle("Sign in", for: .normal)
        registerButton.setTitleColor(.systemBlue, for: .normal)
        registerButton.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .regular)

        let stackView = UIStackView(arrangedSubviews: [label, registerButton])
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.spacing = 4

        return stackView
    }()

    private lazy var registerLabelStackView: UIStackView = RegisterLabelStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNavigationBarWithBackButton(title: "")
    }
    @IBAction private func signUpButtonPressed(_ sender: UIButton) {
        let vc = SignUpViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    private func setupUI() {
        view.backgroundColor = .systemBlue
        view.addSubviews(greetingStackView, contentView, mainStackView)
        view.addSubview(emailLabel)
        mainStackView.addArrangedSubviews(emailTextField, loginButton, orContinueStackView, loginWithGoogleButton, registerLabelStackView)
        registerLabelStackView.addArrangedSubview(registerStackView)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapView))
        view.addGestureRecognizer(tapGesture)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            greetingStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            greetingStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            greetingStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            greetingStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: greetingStackView.bottomAnchor, constant: 64),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            emailLabel.leadingAnchor.constraint(equalTo: mainStackView.leadingAnchor),
            emailLabel.trailingAnchor.constraint(equalTo: mainStackView.trailingAnchor),
            emailLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 32)
        ])
        
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 8),
            mainStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            mainStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24)
        ])
    }
    
    @objc private func didTapView() {
        view.endEditing(true)
    }
}
