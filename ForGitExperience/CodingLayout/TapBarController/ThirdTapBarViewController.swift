//
//  ThirdTapBarViewController.swift
//  ForGitExperience
//
//  Created by Lotte on 14/08/2019.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit

class ThirdTapBarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let title = UILabel(frame: CGRect(x: 0, y: 100, width: 100, height: 30))

        title.text = "세 번째 탭"
        title.textColor = UIColor.red
        title.textAlignment = .center
        title.font = UIFont.boldSystemFont(ofSize: 14)
        title.sizeToFit()
        title.center.x = self.view.frame.width / 2

        self.view.addSubview(title)

        //AppDelegate로 이동
        self.tabBarItem.image = UIImage(named: "photo.png")
        self.tabBarItem.title = "Photo"
    }

}
