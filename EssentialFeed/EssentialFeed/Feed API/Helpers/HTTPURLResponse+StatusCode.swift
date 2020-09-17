//
//  HTTPURLResponse+StatusCode.swift
//  EssentialFeed
//
//  Created by chihyin wang on 2020/9/16.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation

extension HTTPURLResponse {
    private static var OK_200: Int { return 200 }
    
    var isOK: Bool {
        return statusCode == HTTPURLResponse.OK_200
    }
}
