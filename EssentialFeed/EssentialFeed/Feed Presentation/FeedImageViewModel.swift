//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by chihyin wang on 2020/9/10.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?
    
    public var hasLocation: Bool {
        return location != nil
    }
}
