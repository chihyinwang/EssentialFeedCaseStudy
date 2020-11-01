//
//  ImageComment.swift
//  EssentialFeed
//
//  Created by chihyin wang on 2020/11/1.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation

public struct ImageComment: Equatable {
    public let id: UUID
    public let message: String
    public let createdAt: Date
    public let username: String
    
    public init(id: UUID, message: String, createdAt: Date, username: String) {
        self.id = id
        self.message = message
        self.createdAt = createdAt
        self.username = username
    }
}
