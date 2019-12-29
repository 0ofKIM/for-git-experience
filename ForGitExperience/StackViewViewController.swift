//
//  StackViewViewController.swift
//  ForGitExperience
//
//  Created by Lotte on 2019/12/19.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit

class StackViewViewController: UIViewController {

    @IBOutlet var stackView: UIStackView!

    func insertLabel(stackView: UIStackView, at: Int) {
        var firstLabel: UILabel!
        firstLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 50, height: 10))
        firstLabel.text = "테스트\(at)"

        stackView.spacing = 40
        stackView.insertArrangedSubview(firstLabel, at: at)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        insertLabel(stackView: self.stackView, at: 0)
//        insertLabel(stackView: self.stackView, at: 1)
//        insertLabel(stackView: self.stackView, at: 2)
//        insertLabel(stackView: self.stackView, at: 3)
//        insertLabel(stackView: self.stackView, at: 4)
    }

}
