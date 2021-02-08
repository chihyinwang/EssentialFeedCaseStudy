//
//  FeedStore.swift
//  EssentialFeed
//
//  Created by chihyin wang on 2020/8/7.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation

public typealias CachedFeed = (feed: [LocalFeedImage], timestamp: Date) 

public protocol FeedStore {
    func deleteCacheFeed() throws
    func insert(_ feed: [LocalFeedImage], timestamp: Date) throws
    func retrieve() throws -> CachedFeed?
    
    typealias DeletionResult = Result<Void, Error>
    typealias DeletionCompletion = (DeletionResult) -> Void
    
    typealias InsertionResult = Result<Void, Error>
    typealias InsertCompletion = (InsertionResult) -> Void
    
    typealias RetrievalResult = Result<CachedFeed?, Error>
    typealias RetrievalCompletion = (RetrievalResult) -> Void
    
    @available(*, deprecated)
    func deleteCacheFeed(completion: @escaping DeletionCompletion)
    
    @available(*, deprecated)
    func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertCompletion)
    
    @available(*, deprecated)
    func retrieve(completion: @escaping RetrievalCompletion)
}

public extension FeedStore {
    func deleteCacheFeed() throws {
        let group = DispatchGroup()
        group.enter()
        var result: DeletionResult!
        deleteCacheFeed {
            result = $0
            group.leave()
        }
        group.wait()
        return try result.get()
    }
    
    func insert(_ feed: [LocalFeedImage], timestamp: Date) throws {
        let group = DispatchGroup()
        group.enter()
        var result: InsertionResult!
        insert(feed, timestamp: timestamp) {
            result = $0
            group.leave()
        }
        group.wait()
        return try result.get()
    }
    
    func retrieve() throws -> CachedFeed? {
        let group = DispatchGroup()
        group.enter()
        var result: RetrievalResult!
        retrieve {
            result = $0
            group.leave()
        }
        group.wait()
        return try result.get()
    }
    
    func deleteCacheFeed(completion: @escaping DeletionCompletion) {}
    func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertCompletion) {}
    func retrieve(completion: @escaping RetrievalCompletion) {}
}
