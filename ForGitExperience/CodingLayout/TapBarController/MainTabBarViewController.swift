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
            tbItems[0].image = UIImage(named: "calendar")
            tbItems[1].image = UIImage(named: "file-tree")
            tbItems[2].image = UIImage(named: "photo")

            // 3. 탭 바 아이템에 타이틀을 설정한다.
            tbItems[0].title = "calendar"
            tbItems[1].title = "file"
            tbItems[2].title = "photo"

            // 탭 바 아이템 전체를 순회하면서 selectedImage 속성에 이미지를 설정한다.
            for tbItem in tbItems {
                /* 외형프록시로 인한 삭제
                let image = UIImage(named: "checkmark")?.withRenderingMode(.alwaysOriginal)
                tbItem.selectedImage = image

                // 탭 바 아이템별 텍스트 색상 속성을 설정한다.
                tbItem.setTitleTextAttributes([NSAttributedString.Key(rawValue: NSAttributedString.Key.foregroundColor.rawValue): UIColor.gray], for: .disabled)
                tbItem.setTitleTextAttributes([NSAttributedString.Key(rawValue: NSAttributedString.Key.foregroundColor.rawValue): UIColor.red], for: .selected)

                // 전체 아이템의 폰트 크기를 설정한다.
                tbItem.setTitleTextAttributes([NSAttributedString.Key(rawValue: NSAttributedString.Key.font.rawValue) : UIFont.systemFont(ofSize: 15)], for: .normal)
                */

                let image = UIImage(named: "checkmark")?.withRenderingMode(.alwaysOriginal)
                tbItem.selectedImage = image
            }
            
            // 외형 프록시 객체를 이용하여 아이템의 타이틀 색상과 폰트 크기를 설정한다.
            let tbItemProxy = UITabBarItem.appearance()

            tbItemProxy.setTitleTextAttributes([NSAttributedString.Key(rawValue: NSAttributedString.Key.foregroundColor.rawValue): UIColor.red], for: .selected)
            tbItemProxy.setTitleTextAttributes([NSAttributedString.Key(rawValue: NSAttributedString.Key.foregroundColor.rawValue): UIColor.gray], for: .disabled)
            tbItemProxy.setTitleTextAttributes([NSAttributedString.Key(rawValue: NSAttributedString.Key.font.rawValue) : UIFont.systemFont(ofSize: 15)], for: .normal)
        }

        let tbProxy = UITabBar.appearance()
        // 4. 활성화된 탭 바 아이템의 이미지 색상을 변경한다.
        //self.tabBar.tintColor = .white
        tbProxy.tintColor = .white
        // 5. 탭 바에 배경 이미지를 설정한다.
        //self.tabBar.backgroundImage = UIImage(named: "menubar-bg-mini")
        tbProxy.backgroundImage = UIImage(named: "menubar-bg-mini")
    }

}
