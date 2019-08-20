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
    }

}
