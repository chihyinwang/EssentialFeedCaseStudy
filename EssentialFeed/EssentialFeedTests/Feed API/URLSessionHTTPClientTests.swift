//
//  URLSessionHTTPClientTests.swift
//  EssentialFeedTests
//
//  Created by chihyin wang on 2020/8/2.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import XCTest

class URLSessionHTTPClient {
    private let session: URLSession
    
    init(session: URLSession) {
        self.session = session
    }
    
    func get(from url: URL) {
        session.dataTask(with: url)
    }
}

class URLSessionHTTPClientTests: XCTestCase {
    
    func test_getFromURL_CreatesDatataskWithURL() {
        let url = URL(string: "https://any-url.com")!
        
        let session = URLSessionSpy()
        let sut = URLSessionHTTPClient(session: session)
        sut.get(from: url)
        
        XCTAssertEqual(session.receivedURLs, [url])
    }
    
    // MARK: - Helpers
    
    private class URLSessionSpy: URLSession {
        var receivedURLs = [URL]()
        
        override func dataTask(with url: URL) -> URLSessionDataTask {
            self.receivedURLs.append(url)
            
            return FakeURLSessionDataTask()
        }
    }
    
    private class FakeURLSessionDataTask: URLSessionDataTask {}
}
