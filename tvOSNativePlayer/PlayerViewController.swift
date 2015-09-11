//
//  PlayerViewController.swift
//  tvOSNativePlayer
//
//  Created by Martin Normark on 11/09/15.
//  Copyright © 2015 MilkshakeHQ. All rights reserved.
//

import Foundation
import UIKit
import AVKit

class PlayerViewController: AVPlayerViewController {
    let overlayView = UIView(frame: CGRectMake(50, 50, 200, 200))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        overlayView.addSubview(UIImageView(image: UIImage(named: "tv-watermark")))
        contentOverlayView?.addSubview(overlayView)
        
        player = AVPlayer(URL: NSURL(string: "http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!)
        player?.play()
    }
}