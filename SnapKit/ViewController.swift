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
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 150, height: 50))
        button.setTitle("Start Snapping", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .heavy)
        self.view.addSubview(button)
        button.center = self.view.center
        button.addTarget(self, action: #selector(self.tap), for: .touchUpInside)
    }
    
    @objc func tap() {
        
        let photo = SCSDKSnapPhoto(image: #imageLiteral(resourceName: "me.jpg"))
        
        let snap = SCSDKPhotoSnapContent(snapPhoto: photo)
        snap.attachmentUrl = "https://newcapsulecorp.com"
        
        let api = SCSDKSnapAPI(content: snap)
        api.startSnapping { (error) in
            print(error ?? "No Error")
        }
    }
}

