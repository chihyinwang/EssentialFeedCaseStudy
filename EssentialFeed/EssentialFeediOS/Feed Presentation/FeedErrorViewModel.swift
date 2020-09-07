//
//  FeedErrorViewModel.swift
//  EssentialFeediOS
//
//  Created by chihyin wang on 2020/9/7.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation

struct FeedErrorViewModel {
    let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String?) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
