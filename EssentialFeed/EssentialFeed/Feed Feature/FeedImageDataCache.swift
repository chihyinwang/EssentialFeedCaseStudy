//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by chihyin wang on 2020/10/8.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation

public protocol FeedImageDataCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ data: Data, for url: URL, completion: @escaping (Result) -> Void)
}
