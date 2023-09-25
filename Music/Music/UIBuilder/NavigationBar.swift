import UIKit

extension UIViewController {
    func setupNavigationBarWithBackButton(title: String) {
        let backButton = UIBarButtonItem(image: UIImage(systemName: "arrow.backward"), style: .plain, target: self, action: #selector(goBack))
        backButton.tintColor = .black
        navigationItem.leftBarButtonItem = backButton
        navigationItem.title = title
    }
    @IBAction private func goBack() {
        navigationController?.popViewController(animated: true)
    }
}
