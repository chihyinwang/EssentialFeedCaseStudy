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
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: .touchUpInside)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
