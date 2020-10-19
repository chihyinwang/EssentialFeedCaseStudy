//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by chihyin wang on 2020/10/19.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.main.run(until: Date())
    }
}
