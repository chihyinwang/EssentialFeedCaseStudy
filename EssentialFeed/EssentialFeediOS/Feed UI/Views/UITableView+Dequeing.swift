//
//  UITableView+Dequeing.swift
//  EssentialFeediOS
//
//  Created by chihyin wang on 2020/8/30.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import UIKit

extension UITableView {
    func dequeReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
