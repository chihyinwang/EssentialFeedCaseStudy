//
//  SharedTestHelpers.swift
//  EssentialAppTests
//
//  Created by chihyin wang on 2020/10/3.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation
import EssentialFeed

func anyURL() -> URL {
    return URL(string: "https://any-url.com")!
}

func anyNSError() -> NSError {
    return NSError(domain: "any", code: 0)
}

func anyData() -> Data {
    return Data("any-data".utf8)
}

func uniqueFeed() -> [FeedImage] {
    return [FeedImage(id: UUID(), description: "any", location: "any", url: anyURL())]
}
