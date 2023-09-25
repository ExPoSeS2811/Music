import UIKit

extension UILabel {
    convenience init(text: String = "", font: UIFont?, textColor: UIColor, textAlignment: NSTextAlignment = .center, numberOfLines: Int = 1) {
        self.init()
        self.text = text
        self.font = font
        self.textColor = textColor
        self.textAlignment = textAlignment
        self.numberOfLines = numberOfLines
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
