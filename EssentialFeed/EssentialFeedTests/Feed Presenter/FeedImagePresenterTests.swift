//
//  FeedImagePresenterTests.swift
//  EssentialFeedTests
//
//  Created by chihyin wang on 2020/9/9.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import XCTest

final class FeedImagePresenter {
    init(view: Any) {
    
    }
}

class FeedImagePresenterTests: XCTestCase {
    
    func test_init_doesNotSendMessagesToView() {
        let (_, view) = makeSUT()
        
        XCTAssertTrue(view.messages.isEmpty, "Expected no messages on init")
    }
    
    // MARK: - Helpers
    
    private func makeSUT(file: StaticString = #file, line: UInt = #line) -> (sut: FeedImagePresenter, view: ViewSpy) {
        let view = ViewSpy()
        let sut = FeedImagePresenter(view: view)
        trackForMemoryLeaks(view)
        trackForMemoryLeaks(sut)
        return (sut, view)
    }
    
    private class ViewSpy {
        let messages = [Any]()
    }
}
