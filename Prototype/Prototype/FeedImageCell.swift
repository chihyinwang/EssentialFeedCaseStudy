//
//  FeedImageCell.swift
//  Prototype
//
//  Created by chihyin wang on 2020/8/18.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import UIKit

final class FeedImageCell: UITableViewCell {
    @IBOutlet private(set) var locationContainer: UIStackView!
    @IBOutlet private(set) var locationLabel: UILabel!
    @IBOutlet private(set) var feedImageView: UIImageView!
    @IBOutlet private(set) var descriptionLabel: UILabel!
}
