//
//  FeedItemDataMapper.swift
//  EssentialFeed
//
//  Created by chihyin wang on 2020/11/11.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation

public final class FeedImageDataMapper {
    
    public enum Error: Swift.Error {
        case invalidData
    }
    
    public static func map(_ data: Data, from response: HTTPURLResponse) throws -> Data {
        guard response.isOK, !data.isEmpty else {
            throw Error.invalidData
        }
        
        return data
    }
    
}
