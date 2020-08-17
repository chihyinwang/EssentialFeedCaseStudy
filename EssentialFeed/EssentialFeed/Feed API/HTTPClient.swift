//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by chihyin wang on 2020/8/1.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation

public protocol HTTPClient {
    typealias Result = Swift.Result<(Data, HTTPURLResponse), Error>
    
    /// The completion handler can be invoked in any thread
    /// Clients are responsible to dispatch to appropriate threads, if needed.
    func get(from url: URL, completion: @escaping (Result) -> Void)
}
