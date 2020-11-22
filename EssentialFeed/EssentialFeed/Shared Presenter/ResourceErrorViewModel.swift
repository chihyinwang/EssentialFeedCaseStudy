//
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation

public struct ResourceErrorViewModel {
    public let message: String?
    
    static var noError: ResourceErrorViewModel {
        return ResourceErrorViewModel(message: nil)
    }
    
    static func error(message: String?) -> ResourceErrorViewModel {
        return ResourceErrorViewModel(message: message)
    }
}
