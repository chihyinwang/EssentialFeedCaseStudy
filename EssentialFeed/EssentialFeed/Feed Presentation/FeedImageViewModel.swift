//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by chihyin wang on 2020/9/10.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation

public struct FeedImageViewModel<Image> {
    public let description: String?
    public let location: String?
    public let image: Image?
    public let isLoading: Bool
    public let shouldRetry: Bool
    
    public var hasLocation: Bool {
        return location != nil
    }
}
