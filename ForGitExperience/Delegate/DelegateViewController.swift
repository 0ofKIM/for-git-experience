//
//  DelegateViewController.swift
//  ForGitExperience
//
//  Created by Lotte on 22/07/2019.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit

class DelegateViewController: UIViewController, UITextFieldDelegate {

    var Array = ["red","green","blue"]
    
    @IBOutlet var enteredLabel: UILabel!
    @IBOutlet var textField: UITextField!
    @IBOutlet var picker: UIPickerView!
    
    //delegate를 씀으로써 필요 없어짐
    @IBAction func buttonClicked(_ sender: Any) {
        let alert = UIAlertController(title: "alert", message: "button 말고 return key를 누르세요 ~", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .destructive, handler: nil)

        alert.addAction(ok)
        present(alert, animated: false, completion: nil)
    }

    //엔터로 전송(delegate)
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        enteredLabel.text = textField.text
        
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        textField.delegate = self
        picker.delegate = self
        picker.dataSource = self
    }
    
}

extension DelegateViewController: UIPickerViewDelegate, UIPickerViewDataSource {

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Array.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Array[row]
    }

}
