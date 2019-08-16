//
//  MainTabBarViewController.swift
//  ForGitExperience
//
//  Created by Lotte on 14/08/2019.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 1. 탭 바로부터 탭 바 아이템 배열을 가져온다.
        if let tbItems = self.tabBar.items {
            // 2. 탭 바 아이템에 커스텀 이미지를 등록한다.
            tbItems[0].image = UIImage(named: "calendar.png")
            tbItems[1].image = UIImage(named: "file-tree.png")
            tbItems[2].image = UIImage(named: "photo.png")

            // 3. 탭 바 아이템에 타이틀을 설정한다.
            tbItems[0].title = "calendar"
            tbItems[1].title = "file"
            tbItems[2].title = "photo"
        }
        // 4. 활성화된 탭 바 아이템의 이미지 색상을 변경한다.
        self.tabBar.tintColor = .white
        // 5. 탭 바에 배경 이미지를 설정한다.
        self.tabBar.backgroundImage = UIImage(named: "menubar-bg-mini.png")
    }

}
