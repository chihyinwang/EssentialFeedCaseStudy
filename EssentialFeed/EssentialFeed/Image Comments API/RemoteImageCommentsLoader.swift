//
//  RemoteImageCommentsLoader.swift
//  EssentialFeed
//
//  Created by chihyin wang on 2020/10/29.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation

public typealias RemoteImageCommentsLoader = RemoteLoader<[ImageComment]>

public extension RemoteImageCommentsLoader {
    convenience init(url: URL, client: HTTPClient) {
        self.init(url: url, client: client, mapper: ImageCommentsMapper.map)
    }
}
