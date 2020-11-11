//
//  FeedItemDataMapper.swift
//  EssentialFeed
//
//  Created by chihyin wang on 2020/11/11.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation

public final class FeedImageDataMapper {
    
    public static func map(_ data: Data, from response: HTTPURLResponse) throws -> Data {
        guard response.isOK else {
            throw NSError(domain: "any", code: 0)
        }
        
        return Data()
    }
    
}
