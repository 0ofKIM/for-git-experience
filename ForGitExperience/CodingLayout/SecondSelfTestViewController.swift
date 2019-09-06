//
//  SecondSelfTestViewController.swift
//  ForGitExperience
//
//  Created by Lotte on 06/09/2019.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit

class SecondSelfTestViewController: UIViewController {

    @IBOutlet var myView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let button1 = UIButton()
        button1.frame = CGRect(x: 0, y: 0, width: 100, height: 40)
        button1.setTitle("첫번째 버튼", for: .normal)
        button1.setTitleColor(.red, for: .normal)
        button1.titleLabel?.font = .systemFont(ofSize: 14)
        button1.layer.borderWidth = 1
        button1.layer.borderColor = #colorLiteral(red: 0.8666666667, green: 0.8666666667, blue: 0.8666666667, alpha: 1)
        button1.layer.cornerRadius = 6

        button1.topAnchor.constraint(equalTo: myView.topAnchor, constant: 100)

        self.myView.addSubview(button1)

        let button2 = UIButton()
        button2.frame = CGRect(x: 200, y: 50, width: 100, height: 40)
        button2.setTitle("두번째 버튼", for: .normal)
        button2.setTitleColor(.red, for: .normal)
        button2.titleLabel?.font = .systemFont(ofSize: 14)
        button2.layer.borderWidth = 1
        button2.layer.borderColor = #colorLiteral(red: 0.8666666667, green: 0.8666666667, blue: 0.8666666667, alpha: 1)
        button2.layer.cornerRadius = 6

        self.myView.addSubview(button2)

        let button3 = UIButton()
        button3.frame = CGRect(x: 50, y: 200, width: 100, height: 40)
        button3.setTitle("세번째 버튼", for: .normal)
        button3.setTitleColor(.red, for: .normal)
        button3.titleLabel?.font = .systemFont(ofSize: 14)
        button3.layer.borderWidth = 1
        button3.layer.borderColor = #colorLiteral(red: 0.8666666667, green: 0.8666666667, blue: 0.8666666667, alpha: 1)
        button3.layer.cornerRadius = 6

        self.myView.addSubview(button3)
    }

}
