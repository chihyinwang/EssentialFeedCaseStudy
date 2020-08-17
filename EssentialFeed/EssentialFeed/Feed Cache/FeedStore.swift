//
//  FeedStore.swift
//  EssentialFeed
//
//  Created by chihyin wang on 2020/8/7.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation

public enum CachedFeed {
    case empty
    case found(feed: [LocalFeedImage], timestamp: Date)
}

public protocol FeedStore {
    typealias DeleteCompletion = (Error?) -> Void
    typealias InserteCompletion = (Error?) -> Void
    
    typealias RetrievalResult = Result<CachedFeed, Error>
    typealias RetrieveCompletion = (RetrievalResult) -> Void
    
    /// The completion handler can be invoked in any thread
    /// Clients are responsible to dispatch to appropriate threads, if needed.
    func deleteCacheFeed(completion: @escaping DeleteCompletion)
    
    /// The completion handler can be invoked in any thread
    /// Clients are responsible to dispatch to appropriate threads, if needed.
    func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InserteCompletion)
    
    /// The completion handler can be invoked in any thread
    /// Clients are responsible to dispatch to appropriate threads, if needed.
    func retrieve(completion: @escaping RetrieveCompletion)
}
