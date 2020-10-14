//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by chihyin wang on 2020/8/23.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
