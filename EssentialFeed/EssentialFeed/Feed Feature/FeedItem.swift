//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by chihyin wang on 2020/7/30.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
