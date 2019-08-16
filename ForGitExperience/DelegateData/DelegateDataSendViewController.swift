//
//  DelegateDataSendViewController.swift
//  ForGitExperience
//
//  Created by Lotte on 24/07/2019.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit

protocol SendDataDelegate {
    func sendData(data: String)
}

class DelegateDataSendViewController: UIViewController {
    //프로토콜 타입의 변수 생성
    var delegate: SendDataDelegate?
    
    @IBOutlet var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func myButtonClicked(_ sender: Any) {
        if let data = myTextField.text {
            delegate?.sendData(data: data)
            dismiss(animated: true, completion: nil)
        }
    }
    
}
