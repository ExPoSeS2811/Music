import UIKit

class SignUpViewController: UIViewController {
    private lazy var signUpScrollView: UIScrollView = {
        let sv = UIScrollView(translateAutoresizingMask: false)
        sv.contentSize = view.bounds.size
        return sv
    }()
    
    private lazy var completeYourAccountLabel = UILabel(text: "Complete Your Account", font: .boldSystemFont(ofSize: 25), textColor: .black, textAlignment: .center)
    private lazy var firstNameLabel = UILabel(text: "First Name", font: .systemFont(ofSize: 15), textColor: .gray, textAlignment: .left)
    private lazy var enterFirstNameTextField = CreateAccountTextField(placeholder: "Enter your first name", cornerRadius: 25)
    private lazy var lastNameLabel = UILabel(text: "Last Name", font: .systemFont(ofSize: 15), textColor: .gray, textAlignment: .left)
    private lazy var enterLastNameTextField = CreateAccountTextField(placeholder: "Enter your last name", cornerRadius: 25)
    private lazy var emailLabel = UILabel(text: "Email", font: .systemFont(ofSize: 15), textColor: .gray, textAlignment: .left)
    private lazy var enterEmailTextField = CreateAccountTextField(placeholder: "Enter your email", cornerRadius: 25)
    private lazy var passwordLabel = UILabel(text: "Password", font: .systemFont(ofSize: 15), textColor: .gray, textAlignment: .left)
    private lazy var enterPasswordTextField = LoginPasswordSignUp(placeholder: "Enter your password", cornerRadius: 25)
    private lazy var confirmPasswordLabel = UILabel(text: "Confirm Password", font: .systemFont(ofSize: 15), textColor: .gray, textAlignment: .left)
    private lazy var confirmPasswordTextField = LoginPasswordSignUp(placeholder: "Confirm your password", cornerRadius: 25)
    private lazy var signUpButton: UIButton = {
        let button = UIButton(text: "Sign Up", textColor: .white, backgroundColor: .systemBlue, cornerRadius: 25)
        button.addTarget(self, action: #selector(signUpButtonPressed(_:)), for: .touchUpInside)
        return button
    }()
    private lazy var signInStackVeiw = SignInStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupNavigationBarWithBackButton(title: "Sign Up")
        navigationController?.navigationBar.prefersLargeTitles = false
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setupUI()
    }
    
    @IBAction private func signUpButtonPressed(_ sender: UIButton) {
        print("Sign Up button pressed")
    }
    
    private func setupUI() {
        view.addSubview(signUpScrollView)
        signUpScrollView.addSubviews(completeYourAccountLabel, firstNameLabel, enterFirstNameTextField, lastNameLabel, enterLastNameTextField, emailLabel, enterEmailTextField, passwordLabel, enterPasswordTextField, confirmPasswordLabel, confirmPasswordTextField, signUpButton, signInStackVeiw)
        
        NSLayoutConstraint.activate([
            signUpScrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            signUpScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            signUpScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            signUpScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            completeYourAccountLabel.topAnchor.constraint(equalTo: signUpScrollView.topAnchor, constant: 20),
            completeYourAccountLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            completeYourAccountLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            firstNameLabel.topAnchor.constraint(equalTo: completeYourAccountLabel.bottomAnchor, constant: 20),
            firstNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            enterFirstNameTextField.topAnchor.constraint(equalTo: firstNameLabel.bottomAnchor, constant: 20),
            enterFirstNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            enterFirstNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            lastNameLabel.topAnchor.constraint(equalTo: enterFirstNameTextField.bottomAnchor, constant: 20),
            lastNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
        
        
        NSLayoutConstraint.activate([
            enterLastNameTextField.topAnchor.constraint(equalTo: lastNameLabel.bottomAnchor, constant: 20),
            enterLastNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            enterLastNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: enterLastNameTextField.bottomAnchor, constant: 20),
            emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            enterEmailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 20),
            enterEmailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            enterEmailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            passwordLabel.topAnchor.constraint(equalTo: enterEmailTextField.bottomAnchor, constant: 20),
            passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
        ])
        
        NSLayoutConstraint.activate([
            enterPasswordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 20),
            enterPasswordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            enterPasswordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
        
        NSLayoutConstraint.activate([
            confirmPasswordLabel.topAnchor.constraint(equalTo: enterPasswordTextField.bottomAnchor, constant: 20),
            confirmPasswordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            confirmPasswordTextField.topAnchor.constraint(equalTo: confirmPasswordLabel.bottomAnchor, constant: 20),
            confirmPasswordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            confirmPasswordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            signUpButton.heightAnchor.constraint(equalToConstant: 50),
            signUpButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            signUpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            signUpButton.topAnchor.constraint(equalTo: confirmPasswordTextField.bottomAnchor, constant: 25)
        ])
        
        NSLayoutConstraint.activate([
            signInStackVeiw.topAnchor.constraint(equalTo: signUpButton.bottomAnchor, constant: 20),
            signInStackVeiw.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80),
            signInStackVeiw.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -85),
            signInStackVeiw.bottomAnchor.constraint(equalTo: signUpScrollView.bottomAnchor, constant: -20)
        ])
    }
    
}
