import UIKit

class CredentialLabel: UILabel {
    init(text: String, fontSize: CGFloat, fontWeight: UIFont.Weight) {
        super.init(frame: .zero)
        self.text = text
        self.font = UIFont.systemFont(ofSize: fontSize, weight: fontWeight)
        self.textColor = .systemGray
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
