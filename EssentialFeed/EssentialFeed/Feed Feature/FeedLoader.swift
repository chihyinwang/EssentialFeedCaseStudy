//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by chihyin wang on 2020/7/30.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping(LoadFeedResult) -> Void)
}
