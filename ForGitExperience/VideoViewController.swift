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
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var totalTimeLabel: UILabel!

    let avUrl = URL(string: "https://clips.vorwaerts-gmbh.de/VfE_html5.mp4")
    var avPlayer: AVPlayer?
    var avPlayerLayer: AVPlayerLayer!
    var avController = AVPlayerViewController()

    var mTimer: Timer?
    var number: Int = 0
    var duration: CMTime?

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

        duration = avPlayer?.currentItem?.asset.duration
        totalTimeLabel.text = "\(duration?.seconds)"

        if let timer = mTimer {
            //timer 객체가 nil이 아닌 경우에는 invalid 상태에만 시작한다
            if !timer.isValid {
                mTimer = Timer.scheduledTimer(timeInterval: 1,
                                              target: self,
                                              selector: #selector(timerCallback),
                                              userInfo: nil,
                                              repeats: true)
            }
        } else {
            mTimer = Timer.scheduledTimer(timeInterval: 1,
                                          target: self,
                                          selector: #selector(timerCallback),
                                          userInfo: nil,
                                          repeats: true)
        }
    }
    @IBAction func playEndButton(_ sender: Any) {
        avPlayer?.pause()
        number = 0
        timeLabel.text = "\(number)"
        mTimer?.invalidate()
    }

    @objc func timerCallback() {
        number += 1
        number = Int((avPlayer?.currentTime().seconds)!)
        timeLabel.text = "\(number)"
        print("S2S2 \(number) S2S2")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



}
