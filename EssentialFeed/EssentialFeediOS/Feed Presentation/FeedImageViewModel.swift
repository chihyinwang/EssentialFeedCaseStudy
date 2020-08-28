//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by chihyin wang on 2020/8/25.
//  Copyright © 2020 chihyinwang. All rights reserved.
//


struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    
    var hasLocation: Bool {
        return location != nil
    }
}
