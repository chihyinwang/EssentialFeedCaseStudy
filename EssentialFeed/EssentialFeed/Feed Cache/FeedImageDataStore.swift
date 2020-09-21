//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by chihyin wang on 2020/9/21.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>
    typealias InsertionResult = Swift.Result<Void, Error>
    
    func insert(_ data: Data, for url: URL, completion: @escaping (InsertionResult) -> Void)
    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
