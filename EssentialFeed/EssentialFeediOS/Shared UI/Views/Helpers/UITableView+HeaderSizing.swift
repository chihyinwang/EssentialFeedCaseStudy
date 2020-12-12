//
//  UITableView+HeaderSizing.swift
//  EssentialFeediOS
//
//  Created by chihyin wang on 2020/10/16.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import UIKit

extension UITableView {
    func sizeTableHeaderToFit() {
        guard let header = tableHeaderView else { return }
        
        let size = header.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
        
        let needsFrameUpdate = header.frame.height != size.height
        if needsFrameUpdate {
            header.frame.size.height = size.height
            tableHeaderView = header
        }
    }
}
