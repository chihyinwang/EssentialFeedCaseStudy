//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by chihyin wang on 2020/10/7.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ feed: [FeedImage]) throws
}
