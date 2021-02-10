//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by chihyin wang on 2020/8/6.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import XCTest
import EssentialFeed

class CacheFeedUseCaseTests: XCTestCase {
    
    func test_init_doesNotDeleteCacheUponCreation() {
        XCTAssertTrue(makeSUT().store.receivedMessages.isEmpty)
    }
    
    func test_save_doesNotRequestInsertionOnDeletionError() {
        let (sut, store) = makeSUT()
        let error = anyNSError()
        store.completeDeletion(with: error)

        sut.save(uniqueImageFeed().model) { _ in }
        
        XCTAssertEqual(store.receivedMessages, [.deleteCacheFeed])
    }
    
    func test_save_doesRequestInsertionWithTimestampOnDeletionSuccess() {
        let timestamp = Date()
        let feed = uniqueImageFeed()
        let (sut, store) = makeSUT(currentDate: { timestamp })
        store.completeDeletionSuccessfully()

        sut.save(feed.model) { _ in }
        
        XCTAssertEqual(store.receivedMessages, [.deleteCacheFeed, .insert(feed.local, timestamp)])
    }
    
    func test_save_failsOnDeletionError() {
        let (sut, store) = makeSUT()
        let error = anyNSError()
        
        expect(sut, toCompleteWithError: error, when: {
            store.completeDeletion(with: error)
        })
    }
    
    func test_save_failsOnInsertionError() {
        let (sut, store) = makeSUT()
        let error = anyNSError()
        
        expect(sut, toCompleteWithError: error, when: {
            store.completeDeletionSuccessfully()
            store.completeInsertion(with: error)
        })
    }
    
    func test_save_successOnSuccessfulCacheInsertion() {
        let (sut, store) = makeSUT()
        
        expect(sut, toCompleteWithError: nil, when: {
            store.completeDeletionSuccessfully()
            store.completeInsertionSuccessfully()
        })
    }
    
    // MARK: - Helpers
    
    private func makeSUT(currentDate: @escaping () -> Date = Date.init, file: StaticString = #filePath, line: UInt = #line) -> (sut: LocalFeedLoader, store: FeedStoreSpy) {
        let store = FeedStoreSpy()
        let sut = LocalFeedLoader(store: store, currentDate: currentDate)
        trackForMemoryLeaks(sut, file: file, line: line)
        trackForMemoryLeaks(store, file: file, line: line)
        return (sut, store)
    }
    
    private func expect(_ sut: LocalFeedLoader, toCompleteWithError expectedError: NSError?, when action: () -> Void) {
        let exp = expectation(description: "Wait for save completion")
        action()

        var receivedError: Error?
        sut.save(uniqueImageFeed().model) { result in
            if case let Result.failure(error) = result { receivedError = error }
            exp.fulfill()
        }
        
        wait(for: [exp], timeout: 1.0)
        
        XCTAssertEqual(receivedError as NSError?, expectedError)
    }

}
