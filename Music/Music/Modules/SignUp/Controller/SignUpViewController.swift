import UIKit

class SignUpViewController: UIViewController {
    private lazy var signUpScrollView = UIScrollView(translateAutoresizingMask: false)
    private lazy var completeYourAccountLabel = UILabel(text: "Complete Your Account", font: .boldSystemFont(ofSize: 25), textColor: .black, textAlignment: .center)
    private lazy var firstNameLabel = UILabel(text: "First Name", font: .systemFont(ofSize: 15), textColor: .gray, textAlignment: .left)
    private lazy var lastNameLabel = UILabel(text: "Last Name", font: .systemFont(ofSize: 15), textColor: .gray, textAlignment: .left)
    private lazy var emailLabel = UILabel(text: "Email", font: .systemFont(ofSize: 15), textColor: .gray, textAlignment: .left)
    private lazy var passwordLabel = UILabel(text: "Password", font: .systemFont(ofSize: 15), textColor: .gray, textAlignment: .left)
    private lazy var confirmPasswordLabel = UILabel(text: "Confirm Password", font: .systemFont(ofSize: 15), textColor: .gray, textAlignment: .left)
    private lazy var signUpButton: UIButton = {
        let button = UIButton(text: "Sign Up", textColor: .white, backgroundColor: .systemBlue, cornerRadius: 25)
        button.addTarget(self, action: #selector(signUpButtonPressed(_:)), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setupNavigationBarWithBackButton(title: "Sign Up")
        setupUI()
    }
    
    @IBAction private func signUpButtonPressed(_ sender: UIButton) {
        print("Sign Up button pressed")
    }
    
    private func setupUI() {
        view.addSubview(signUpScrollView)
        signUpScrollView.addSubviews(completeYourAccountLabel, firstNameLabel, signUpButton)
        
        NSLayoutConstraint.activate([
            signUpScrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            signUpScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            signUpScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            signUpScrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
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
            signUpButton.heightAnchor.constraint(equalToConstant: 50),
            signUpButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            signUpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            signUpButton.topAnchor.constraint(equalTo: firstNameLabel.bottomAnchor, constant: 20)
        ])
    }
    
}
