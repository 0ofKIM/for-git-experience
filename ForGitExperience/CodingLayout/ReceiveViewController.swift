//
//  ReceiveViewController.swift
//  ForGitExperience
//
//  Created by Lotte on 29/08/2019.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit

class ReceiveViewController: UIViewController {

    var lblEmail: UILabel!
    var lblUpdate: UILabel!
    var lblInterval: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white

        lblEmail = UILabel()
        lblEmail.frame = CGRect(x: 50, y: 100, width: 300, height: 30)
        lblEmail?.text = "전달받은 이메일 : "

        lblUpdate = UILabel()
        lblUpdate.frame = CGRect(x: 50, y: 150, width: 300, height: 30)
        lblUpdate?.text = "업데이트 여부 : "

        lblInterval = UILabel()
        lblInterval.frame = CGRect(x: 50, y: 200, width: 300, height: 30)
        lblInterval?.text = "업데이트 주기 : "

        self.view.addSubview(lblEmail)
        self.view.addSubview(lblUpdate)
        self.view.addSubview(lblInterval)
    }

}
