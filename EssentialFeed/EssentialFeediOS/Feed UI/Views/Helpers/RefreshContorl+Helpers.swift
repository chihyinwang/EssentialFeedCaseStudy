//
//  RefreshContorl+Helpers.swift
//  EssentialFeediOS
//
//  Created by chihyin wang on 2020/9/7.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
