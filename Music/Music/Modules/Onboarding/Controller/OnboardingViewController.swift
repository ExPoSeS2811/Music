import UIKit

class OnboardingViewController: UIViewController {
    private lazy var onboardingImage = UIImageView(cornerRadius: 150)
    private lazy var onboardingView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 175/255, green: 209/255, blue: 250/255, alpha: 1)
        view.layer.cornerRadius = 15
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var headerTitle = UILabel(font: .boldSystemFont(ofSize: 25), textColor: .darkGray, textAlignment: .left, numberOfLines: 0)
    private lazy var onboardingTitle = UILabel(font: .systemFont(ofSize: 15), textColor: .gray, textAlignment: .center, numberOfLines: 0)
    private lazy var skipButton = UIButton(text: "Skip", textColor: .black, backgroundColor: .clear, cornerRadius: 0)
    private lazy var nextButton = UIButton(text: "Next", textColor: .black, backgroundColor: .white, cornerRadius: 25)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        view.backgroundColor = .white
        setupUI()
    }
    
    init(image: UIImage, headerTitle: String, title: String) {
        super.init(nibName: nil, bundle: nil)
        self.onboardingImage.image = image
        self.headerTitle.text = headerTitle
        self.onboardingTitle.text = title
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupUI() {
        view.addSubviews(onboardingImage, onboardingView, headerTitle, onboardingTitle, skipButton, nextButton)
        
        NSLayoutConstraint.activate([
            onboardingImage.heightAnchor.constraint(equalToConstant: 300),
            onboardingImage.widthAnchor.constraint(equalToConstant: 300),
            onboardingImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            onboardingImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            onboardingView.heightAnchor.constraint(equalToConstant: 360),
            onboardingView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40),
            onboardingView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 27),
            onboardingView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -27)
        ])
        
        NSLayoutConstraint.activate([
            headerTitle.topAnchor.constraint(equalTo: onboardingView.topAnchor, constant: 30),
            headerTitle.leadingAnchor.constraint(equalTo: onboardingView.leadingAnchor, constant: 30),
            headerTitle.trailingAnchor.constraint(equalTo: onboardingView.trailingAnchor, constant: -30)
        ])
        
        NSLayoutConstraint.activate([
            onboardingTitle.topAnchor.constraint(equalTo: headerTitle.bottomAnchor, constant: 16),
            onboardingTitle.leadingAnchor.constraint(equalTo: onboardingView.leadingAnchor, constant: 30),
            onboardingTitle.trailingAnchor.constraint(equalTo: onboardingView.trailingAnchor, constant: -30)
        ])
        
        NSLayoutConstraint.activate([
            skipButton.heightAnchor.constraint(equalToConstant: 50),
            skipButton.topAnchor.constraint(equalTo: onboardingTitle.bottomAnchor, constant: 16),
            skipButton.leadingAnchor.constraint(equalTo: onboardingView.leadingAnchor, constant: 30),
        ])
        
        NSLayoutConstraint.activate([
            nextButton.heightAnchor.constraint(equalToConstant: 50),
            nextButton.widthAnchor.constraint(equalToConstant: 85),
            nextButton.topAnchor.constraint(equalTo: onboardingTitle.bottomAnchor, constant: 16),
            nextButton.trailingAnchor.constraint(equalTo: onboardingView.trailingAnchor, constant: -30)
        ])
    }
}
