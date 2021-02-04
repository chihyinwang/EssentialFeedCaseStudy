//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by chihyin wang on 2020/9/21.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation

public protocol FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws
    func retrieve(dataForURL url: URL) throws -> Data?
}
