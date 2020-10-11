//
//  SceneDelegate.swift
//  EssentialApp
//
//  Created by chihyin wang on 2020/9/29.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import UIKit
import CoreData
import EssentialFeed
import EssentialFeediOS

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    let localStoreURL = NSPersistentContainer
        .defaultDirectoryURL()
        .appendingPathComponent("feed-store.sqlite")
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
        
        configureWindow()
    }
    
    func configureWindow() {
        let remoteURL = URL(string: "https://static1.squarespace.com/static/5891c5b8d1758ec68ef5dbc2/t/5db4155a4fbade21d17ecd28/1572083034355/essential_app_feed.json")!
        
        let remoteClient = makeRemoteClient()
        let remoteFeedLoader = RemoteFeedLoader(url: remoteURL, client: remoteClient)
        let remoteImageLoader = RemoteFeedImageDataLoader(client: remoteClient)
        
        let localStore = try! CoreDataFeedStore(storeURL: localStoreURL)
        let localFeedStore = LocalFeedLoader(store: localStore, currentDate: Date.init)
        let localFeedImageStore = LocalFeedImageDataLoader(store: localStore)
        
        window?.rootViewController = UINavigationController(rootViewController: FeedUIComposer.feedComposedWith(
            loader: FeedLoaderWithFallbackComposite(
                primary: FeedLoaderCacheDecorator(
                    decoratee: remoteFeedLoader,
                    cache: localFeedStore),
                fallback: localFeedStore),
            imageLoader: FeedImageDataLoaderWithFallbackComposite(
                primary: FeedImageDataLoaderCacheDecorator(
                    decoratee: remoteImageLoader,
                    cache: localFeedImageStore),
                fallback: localFeedImageStore)))
    }

    func makeRemoteClient() -> HTTPClient {
        return URLSessionHTTPClient(session: URLSession(configuration: .ephemeral))
    }
    
}
