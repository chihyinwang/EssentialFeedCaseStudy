//
//  FeedStoreSpy.swift
//  EssentialFeedTests
//
//  Created by chihyin wang on 2020/8/8.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation
import EssentialFeed

class FeedStoreSpy: FeedStore {
    enum ReceivedMessage: Equatable {
        case deleteCacheFeed
        case insert([LocalFeedImage], Date)
        case retrieve
    }
    
    var receivedMessages = [ReceivedMessage]()
    
    private var deleteCompletions = [DeletionCompletion]()
    private var insertCompletions = [InsertCompletion]()
    private var retrievalCompletions = [RetrievalCompletion]()
    
    func deleteCacheFeed(completion: @escaping DeletionCompletion) {
        deleteCompletions.append(completion)
        receivedMessages.append(.deleteCacheFeed)
    }
    
    func completeDeletion(with error: Error, at index: Int = 0) {
        deleteCompletions[index](.failure(error))
    }
    
    func completeDeletionSuccessfully(at index: Int = 0) {
        deleteCompletions[index](.success(()))
    }
    
    func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertCompletion) {
        insertCompletions.append(completion)
        receivedMessages.append(.insert(feed, timestamp))
    }

    func completeInsertion(with error: Error, at index: Int = 0) {
        insertCompletions[index](.failure(error))
    }
    
    func completeInsertionSuccessfully(at index: Int = 0) {
        insertCompletions[index](.success(()))
    }
    
    func retrieve(completion: @escaping RetrievalCompletion) {
        retrievalCompletions.append(completion)
        receivedMessages.append(.retrieve)
    }
    
    func completeRetrieval(with error: Error, at index: Int = 0) {
        retrievalCompletions[index](.failure(error))
    }
    
    func completeRetrievalWithEmptyCache(at index: Int = 0) {
        retrievalCompletions[index](.success(.none))
    }
    
    func completeRetrieval(with feed: [LocalFeedImage], timestamp: Date, at index: Int = 0) {
        retrievalCompletions[index](.success(CachedFeed(feed: feed, timestamp: timestamp)))
    }
}
