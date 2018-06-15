//
//  ViewController.swift
//  SnapKit
//
//  Created by Martin Otyeka on 2018-06-14.
//  Copyright © 2018 New Capsule Corp. All rights reserved.
//

import UIKit
import SCSDKCreativeKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sticker = SCSDKSnapSticker(stickerImage: #imageLiteral(resourceName: "sticker.png"))
        
        let snap = SCSDKNoSnapContent()
        snap.sticker = sticker
        snap.caption = "Snap on Snapchat!"
        snap.attachmentUrl = "https://snapchat.com"
        
        let api = SCSDKSnapAPI(content: snap)
        api.startSnapping { (error) in
            print(error ?? "No Error")
        }
    }
}

