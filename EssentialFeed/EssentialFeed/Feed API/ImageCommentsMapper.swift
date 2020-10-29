//
//  ImageCommentsMapper.swift
//  EssentialFeed
//
//  Created by chihyin wang on 2020/10/29.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation

internal final class ImageCommentsMapper {
    private struct Root: Decodable {
        let items: [RemoteFeedItem]
    }
    
    internal static func map(_ data: Data, from response: HTTPURLResponse) throws -> [RemoteFeedItem] {
        guard response.isOK, let root = try? JSONDecoder().decode(Root.self, from: data) else {
            throw RemoteImageCommentsLoader.Error.invalidData
        }
        
        return root.items
    }
}

