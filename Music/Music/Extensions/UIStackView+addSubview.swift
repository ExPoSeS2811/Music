//
//  UIStackView+addSubview.swift
//  Music
//
//  Created by Gleb Rasskazov on 25.09.2023.
//

import UIKit

extension UIStackView {
    func addArrangedSubviews(_ views: UIView...) {
        views.forEach { view in
            self.addArrangedSubview(view)
        }
    }
}

