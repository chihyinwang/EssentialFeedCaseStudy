//
//  FeedViewController.swift
//  Prototype
//
//  Created by chihyin wang on 2020/8/18.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import UIKit

final class FeedViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FeedImageCell")!
        return cell
    }
}
