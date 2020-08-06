//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by chihyin wang on 2020/8/6.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import XCTest

class FeedStore {
    var deleteCachedCallCount = 0
}

class LocalFeedLoader {
    
    init(store: FeedStore) {}
}

class CacheFeedUseCaseTests: XCTestCase {
    
    func test_init_doesNotDeleteCacheUponCreation() {
        let store = FeedStore()
        
        _ = LocalFeedLoader(store: store)
        
        XCTAssertEqual(store.deleteCachedCallCount, 0)
    }
    
}
