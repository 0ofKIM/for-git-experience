//
//  VideoViewController.swift
//  ForGitExperience
//
//  Created by Lotte on 2019/11/12.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit
import AVKit

class VideoViewController: UIViewController, AVPlayerViewControllerDelegate {

    @IBOutlet var videoView: UIView!
    @IBOutlet var playButton: UIButton!
    @IBOutlet var puaseButton: UIButton!

    let avUrl = URL(string: "https://clips.vorwaerts-gmbh.de/VfE_html5.mp4")
    var avPlayer: AVPlayer?
    var avPlayerLayer: AVPlayerLayer!
    var avController = AVPlayerViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func playStartButton(_ sender: Any) {

//        avController.player = avPlayer
//        avController.view.frame = self.view.frame
//        self.present(avController, animated:  true, completion: nil)

        avPlayer = AVPlayer(url: avUrl!)
        avPlayerLayer = AVPlayerLayer(player: avPlayer)
        avPlayerLayer.videoGravity = .resize
        avPlayerLayer.masksToBounds = true
        avPlayerLayer.cornerRadius = 14
        avPlayerLayer.frame = videoView.layer.bounds
        videoView.layer.addSublayer(avPlayerLayer)
        avPlayer?.play()
    }

}
