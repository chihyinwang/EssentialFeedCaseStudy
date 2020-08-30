//
//  UIImageView+Animations.swift
//  EssentialFeediOS
//
//  Created by chihyin wang on 2020/8/30.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import UIKit

extension UIImageView {
    func setImageAnimated(_ newImage: UIImage?) {
        image = newImage
        
        guard newImage != nil else { return }
        
        alpha = 0
        UIView.animate(withDuration: 0.25) {
            self.alpha = 1
        }
    }
}
