//
//  FeedStore.swift
//  EssentialFeed
//
//  Created by chihyin wang on 2020/8/7.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation

public enum RetrieveCachedFeedResult {
    case empty
    case found(feed: [LocalFeedImage], timestamp: Date)
    case failure(Error)
}

public protocol FeedStore {
    typealias DeleteCompletion = (Error?) -> Void
    typealias InserteCompletion = (Error?) -> Void
    typealias RetrieveCompletion = (RetrieveCachedFeedResult) -> Void
    
    func deleteCacheFeed(completion: @escaping DeleteCompletion)
    func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InserteCompletion)
    func retrieve(completion: @escaping RetrieveCompletion)
}
