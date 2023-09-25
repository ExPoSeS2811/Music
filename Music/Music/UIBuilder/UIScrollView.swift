import UIKit

extension UIScrollView {
    convenience init(translateAutoresizingMask: Bool) {
        self.init()
        self.translatesAutoresizingMaskIntoConstraints = translateAutoresizingMask
    }
}
