//
//  TapBarViewController.swift
//  ForGitExperience
//
//  Created by Lotte on 14/08/2019.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit

class TapBarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let title = UILabel(frame: CGRect(x: 0, y: 100, width: 100, height: 30))

        title.text = "첫 번째 탭"
        title.textColor = UIColor.red
        title.textAlignment = .center
        title.font = UIFont.boldSystemFont(ofSize: 14)
        title.sizeToFit()
        title.center.x = self.view.frame.width / 2

        self.view.addSubview(title)

        //AppDelegate로 이동
        // 탭 바 아이템에 커스텀 이미지를 등록하고 탭 이름을 입력한다.
                self.tabBarItem.image = UIImage(named: "calendar.png")
                self.tabBarItem.title = "Calendar"
    }

}
