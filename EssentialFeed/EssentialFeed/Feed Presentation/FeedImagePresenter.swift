//
//  FeedImagePresenter.swift
//  EssentialFeed
//
//  Created by chihyin wang on 2020/9/10.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation

public final class FeedImagePresenter {
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location)
    }
}
