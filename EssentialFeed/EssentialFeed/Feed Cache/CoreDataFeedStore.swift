//
//  CoreDataFeedStore.swift
//  EssentialFeed
//
//  Created by chihyin wang on 2020/8/14.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import CoreData

public class CoreDataFeedStore: FeedStore {
    public init() {}
    
    public func deleteCacheFeed(completion: @escaping DeleteCompletion) {
        
    }
    
    public func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InserteCompletion) {
        
    }
    
    public func retrieve(completion: @escaping RetrieveCompletion) {
        completion(.empty)
    }
}

private class ManagedCache: NSManagedObject {
    @NSManaged var timestamp: Date
    @NSManaged var feed: NSOrderedSet
}

private class ManagedFeedImage: NSManagedObject {
    @NSManaged var id: UUID
    @NSManaged var imageDescription: String?
    @NSManaged var location: String?
    @NSManaged var url: URL
    @NSManaged var cache: ManagedCache
}
