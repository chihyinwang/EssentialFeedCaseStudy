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
    typealias DeleteCompletion = (Error?) -> Void
    typealias InserteCompletion = (Error?) -> Void
    
    enum ReceivedMessage: Equatable {
        case deleteCacheFeed
        case insert([LocalFeedImage], Date)
    }
    
    var receivedMessages = [ReceivedMessage]()
    
    private var deleteCompletions = [DeleteCompletion]()
    private var insertCompletions = [InserteCompletion]()
    
    func deleteCacheFeed(completion: @escaping DeleteCompletion) {
        deleteCompletions.append(completion)
        receivedMessages.append(.deleteCacheFeed)
    }
    
    func completeDeletion(with error: Error, at index: Int = 0) {
        deleteCompletions[index](error)
    }
    
    func completeDeletionSuccessfully(at index: Int = 0) {
        deleteCompletions[index](nil)
    }
    
    func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InserteCompletion) {
        insertCompletions.append(completion)
        receivedMessages.append(.insert(feed, timestamp))
    }

    func completeInsertion(with error: Error, at index: Int = 0) {
        insertCompletions[index](error)
    }
    
    func completeInsertionSuccessfully(at index: Int = 0) {
        insertCompletions[index](nil)
    }
}
