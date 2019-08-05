//
//  PanGestureViewController.swift
//  ForGitExperience
//
//  Created by Lotte on 01/08/2019.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit

class PanGestureViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var panGestureRecognizer: UIPanGestureRecognizer!

    @IBAction func panAction(_ sender: Any) {
        let transition = panGestureRecognizer.translation(in: imageView)
        let changedX = imageView.center.x + transition.x
        let changedY = imageView.center.y + transition.y
        imageView.center = CGPoint(x: changedX, y: changedY)

        panGestureRecognizer.setTranslation(CGPoint.zero, in: imageView)

        let velocity = panGestureRecognizer.velocity(in: imageView)

        if abs(velocity.x) > abs(velocity.y) {//좌우 판단
            velocity.x < 0 ? print("왼쪽\(velocity.x)") : print("오른쪽\(velocity.x)")
        } else if abs(velocity.y) > abs(velocity.x) {//상하 판단
            velocity.y < 0 ? print("위쪽\(velocity.y)") : print("아래쪽\(velocity.y)")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
