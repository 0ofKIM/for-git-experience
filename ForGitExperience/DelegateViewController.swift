//
//  DelegateViewController.swift
//  ForGitExperience
//
//  Created by Lotte on 22/07/2019.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit

class DelegateViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
                                                                     

    var Array = ["red","green","blue"]
    
    @IBOutlet var enteredLabel: UILabel!
    @IBOutlet var textField: UITextField!
    @IBOutlet var picker: UIPickerView!
    
    //delegate를 씀으로써 필요 없어짐
//    @IBAction func buttonClicked(_ sender: Any) {
//        enteredLabel.text = textField.text
//    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        enteredLabel.text = textField.text
        
        return true
    }
    
    // 피커뷰
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Array.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Array[row]
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        textField.delegate = self
        picker.delegate = self
        picker.dataSource = self
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
