//
// Copyright © 2021 chihyinwang. All rights reserved.
//

import EssentialFeed

class NullStore {}

extension NullStore: FeedStore {
    func deleteCacheFeed() throws {}
    
    func insert(_ feed: [LocalFeedImage], timestamp: Date) throws {}
    
    func retrieve() throws -> CachedFeed? { .none }
}

extension NullStore: FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws {}
    
    func retrieve(dataForURL url: URL) throws -> Data? { .none }
}
