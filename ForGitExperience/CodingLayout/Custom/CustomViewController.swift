//
//  CustomViewController.swift
//  ForGitExperience
//
//  Created by Lotte on 20/08/2019.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let csBtn = CSButton()
        csBtn.frame = CGRect(x: 30, y: 50, width: 150, height: 30)
        self.view.addSubview(csBtn)

        //인자값에 따라 다른 스타일로 결정되는 버튼 1
        let rectBtn = CSButton(type: .rect)
        rectBtn.frame = CGRect(x: 30, y: 200, width: 150, height: 30)
        self.view.addSubview(rectBtn)

        //인자값에 따라 다른 스타일로 결정되는 버튼 2
        let circleBtn = CSButton(type: .circle)
        circleBtn.frame = CGRect(x: 200, y: 200, width: 150, height: 30)
        self.view.addSubview(circleBtn)

        circleBtn.style = .rect // 타원 형태로 정의된 버튼의 스타일을 다시 사각형으로 설정
    }

}
