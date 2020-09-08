//
//  FeedPresenterTests.swift
//  EssentialFeedTests
//
//  Created by chihyin wang on 2020/9/8.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import XCTest

final class FeedPresenter {
    
    init(view: Any) {
        
    }
}

class FeedPresenterTests: XCTestCase {

    func test_init_doesNotSendMessagesToView() {
        let view = ViewSpy()
        
        _ = FeedPresenter(view: view)
        
        XCTAssertTrue(view.messages.isEmpty, "Expected no view messages")
    }
    
    // MARK: - Helpers
    
    private class ViewSpy {
        var messages = [Any]()
    }
}
