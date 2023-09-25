import UIKit

extension UIButton {
    convenience init(text: String?, textColor: UIColor?, backgroundColor: UIColor?, cornerRadius: CGFloat = 0) {
        self.init()
        self.setTitle(text, for: .normal)
        self.setTitleColor(textColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = cornerRadius
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
