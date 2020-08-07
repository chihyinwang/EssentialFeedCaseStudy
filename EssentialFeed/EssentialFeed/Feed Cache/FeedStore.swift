//
//  FeedStore.swift
//  EssentialFeed
//
//  Created by chihyin wang on 2020/8/7.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation

public protocol FeedStore {
    typealias DeleteCompletion = (Error?) -> Void
    typealias InserteCompletion = (Error?) -> Void
    
    func deleteCacheFeed(completion: @escaping DeleteCompletion)
    func insert(_ items: [LocalFeedItem], timestamp: Date, completion: @escaping InserteCompletion)
}
