//
//  DelegateDataViewController.swift
//  ForGitExperience
//
//  Created by Lotte on 23/07/2019.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit

// Delegate를 이용한 ViewController간 Data전달방법
// sendDataDelegate (1.채택)
class DelegateDataReceiveViewController: UIViewController {
    
    @IBOutlet var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "show" {
            let viewController : DelegateDataSendViewController = segue.destination as! DelegateDataSendViewController
            viewController.delegate = self
        }
    }

}

//convention에 맞게 extension으로 빼줌
extension DelegateDataReceiveViewController: SendDataDelegate {
    //옵셔널로 선언한게 아니었으므로 반드시 선언(2.준수)
    func sendData(data: String) {
        myLabel.text = data
    }
}
