//
//  FeedErrorViewModel.swift
//  EssentialFeed
//
//  Created by chihyin wang on 2020/9/8.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation

public struct FeedErrorViewModel {
    public let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String?) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
