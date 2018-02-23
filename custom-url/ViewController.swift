//
//  ViewController.swift
//  custom-url
//
//  Created by Anthony Elliott on 2/23/18.
//  Copyright © 2018 Pillar Technology. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var schemeLabel: UILabel!
    @IBOutlet weak var queryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(forName: Notification.Name(rawValue:"MyNotification"), object: nil, queue: nil) { notification in
            let userInfo = notification.userInfo
            
            if let scheme = userInfo?["scheme"] {
                self.schemeLabel.text = scheme as? String
            }

            if let query = userInfo?["query"] as? String {
                self.queryLabel.text = String(query.count)
//                self.queryLabel.text = query
            }
        }
    }
}
