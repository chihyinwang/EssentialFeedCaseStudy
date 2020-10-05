//
//  FeedLoaderStub.swift
//  EssentialAppTests
//
//  Created by chihyin wang on 2020/10/5.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import EssentialFeed

class FeedLoaderStub: FeedLoader {
    private let result: FeedLoader.Result
    
    init(result: FeedLoader.Result) {
        self.result = result
    }
    
    func load(completion: @escaping (FeedLoader.Result) -> Void) {
        completion(result)
    }
}
