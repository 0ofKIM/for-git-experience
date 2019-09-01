//
//  SelfTestViewController.swift
//  ForGitExperience
//
//  Created by Lotte on 28/08/2019.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit

class SelfTestViewController: UIViewController {

    // ? : 강제언래핑 하는 이유
    var paramEmail: UITextField!
    var paramUpdate: UISwitch!
    var paramInterval: UIStepper!
    var txtUpdate: UILabel!
    var txtInterval: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "첫번째 화면"

        let lblEmail = UILabel()
        lblEmail.frame = CGRect(x: 30, y: 100, width: 100, height: 30)
        lblEmail.text = "이메일"
        lblEmail.font = .systemFont(ofSize: 14)
        self.view.addSubview(lblEmail)

        let lblUpdate = UILabel()
        lblUpdate.frame = CGRect(x: 30, y: 150, width: 100, height: 30)
        lblUpdate.text = "자동갱신"
        lblUpdate.font = .systemFont(ofSize: 14)
        self.view.addSubview(lblUpdate)

        let lblInterval = UILabel()
        lblInterval.frame = CGRect(x: 30, y: 200, width: 100, height: 30)
        lblInterval.text = "갱신주기"
        lblInterval.font = .systemFont(ofSize: 14)
        self.view.addSubview(lblInterval)

        paramEmail = UITextField()
        paramEmail.frame = CGRect(x: 120, y: 100, width: 230, height: 30)
        paramEmail.borderStyle = .roundedRect // *
        self.view.addSubview(paramEmail)

        paramUpdate = UISwitch()
        paramUpdate.frame = CGRect(x: 120, y: 150, width: 40, height: 30)
        paramUpdate.setOn(true, animated: true) // *
        self.view.addSubview(paramUpdate)
        paramUpdate.addTarget(self, action: #selector(presentUpdateValue(_:)), for: .touchUpInside)

        paramInterval = UIStepper()
        paramInterval.frame = CGRect(x: 120, y: 200, width: 230, height: 30)
        self.view.addSubview(paramInterval)
        paramInterval.addTarget(self, action: #selector(presentIntervalValue(_:)), for: .touchUpInside)

        txtUpdate = UILabel()
        txtUpdate.frame = CGRect(x: 250, y: 150, width: 80, height: 30)
        txtUpdate.text = "갱신함"
        txtUpdate.font = .systemFont(ofSize: 14)
        txtUpdate.textColor = .red
        self.view.addSubview(txtUpdate)

        txtInterval = UILabel()
        txtInterval.frame = CGRect(x: 250, y: 200, width: 80, height: 30)
        txtInterval.text = "0분마다"
        txtInterval.font = .systemFont(ofSize: 14)
        txtInterval.textColor = .red
        self.view.addSubview(txtInterval)

        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .compose, target: self, action: #selector(submit(_:))) // *
    }

    @objc func presentUpdateValue(_ sender: UISwitch) {
        txtUpdate.text = sender.isOn ? "갱신함" : "갱신하지 않음"
    }

    @objc func presentIntervalValue(_ sender: UIStepper) {
        txtInterval.text = "\(Int(sender.value))분마다"
    }

    // *
    @objc func submit(_ sender: UIBarButtonItem) {
        let rvc = ReceiveViewController()

//        rvc.lblEmail.text?.append(contentsOf: paramEmail.text!)
//        rvc.lblUpdate.text?.append(contentsOf: txtUpdate.text!)
//        rvc.lblInterval.text?.append(contentsOf: txtInterval.text!)
        rvc.email = paramEmail.text
        rvc.update = txtUpdate.text
        rvc.interval = txtInterval.text

        self.navigationController?.pushViewController(rvc, animated: true)
    }

}
