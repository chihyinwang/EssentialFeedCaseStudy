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
    
    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
