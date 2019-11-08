//
//  PinchZoomViewController.swift
//  ForGitExperience
//
//  Created by Lotte on 2019/11/08.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit

class PinchZoomViewController: UIViewController {

    @IBOutlet var pinchImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let pinchRecognizer = UIPinchGestureRecognizer(target: self, action: #selector(pinchAction(_ :)))

        pinchImageView.addGestureRecognizer(pinchRecognizer)
    }

    @objc func pinchAction(_ sender: UIPinchGestureRecognizer) {
        print("\(sender.scale)")
        pinchImageView.transform = pinchImageView.transform.scaledBy(x: sender.scale, y: sender.scale)

        sender.scale = 1.0
    }

}
