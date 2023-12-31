import UIKit

class LoginViewController: UIViewController {
    private lazy var mainStackView: UIStackView = BaseStackView(spacing: 24)
    private lazy var loginTextViewStackView: UIStackView = BaseStackView()
    private lazy var loginButtonStackView: UIStackView = BaseStackView(spacing: 16)
    private lazy var loginLabel: CredentialLabel = .init(text: "Login", fontSize: 16, fontWeight: .semibold)
    private lazy var loginTextField: BaseTextField = .init(placeholder: "Login", cornerRadius: 12)
    private lazy var passwordLabel: CredentialLabel = .init(text: "Password", fontSize: 16, fontWeight: .semibold)
    private lazy var passwordTextField: LoginPasswordTextField = .init(placeholder: "Password", cornerRadius: 12)
    private lazy var orContinueStackView: UIStackView = OrContinueStackView()
    private lazy var loginButton: UIButton = LoginButton(title: "Sign in")
    private lazy var loginWithGoogleButton: UIButton = LoginWithGoogleButton(title: "Continue with Google")
    private lazy var registerLabelStackView: UIStackView = RegisterLabelStackView()

    private lazy var registerStackView: UIStackView = {
        let label = UILabel()
        label.text = "Don't have an account?"
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .gray

        let registerButton = UIButton(type: .system)
        registerButton.setTitle("Sign up", for: .normal)
        registerButton.setTitleColor(.systemBlue, for: .normal)
        registerButton.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        registerButton.addTarget(self, action: #selector(registerTapped), for: .touchUpInside)

        let stackView = UIStackView(arrangedSubviews: [label, registerButton])
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.spacing = 4

        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        view.backgroundColor = .white

        view.addSubview(mainStackView)
        mainStackView.addArrangedSubviews(loginTextViewStackView, loginButtonStackView, registerLabelStackView)
        loginTextViewStackView.addArrangedSubviews(loginLabel, loginTextField, passwordLabel, passwordTextField)
        loginButtonStackView.addArrangedSubviews(loginButton, orContinueStackView, loginWithGoogleButton)
        registerLabelStackView.addArrangedSubview(registerStackView)

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapView))
        view.addGestureRecognizer(tapGesture)

        setupConstraints()
        configurationNavigationBar()
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            mainStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            mainStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            mainStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16)
        ])
    }

    private func configurationNavigationBar() {
        title = "Login"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    @objc private func loginButtonTapped(_ sender: UIButton) {}

    @objc private func loginWithGoogleButtonTapped(_ sender: UIButton) {}
    @objc private func registerTapped() {
        let registerVC = CreateAccountViewController()
        navigationController?.pushViewController(registerVC, animated: true)
    }

    @objc func didTapView() {
        view.endEditing(true)
    }
}
