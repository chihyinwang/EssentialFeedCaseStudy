//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by chihyin wang on 2020/8/1.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}