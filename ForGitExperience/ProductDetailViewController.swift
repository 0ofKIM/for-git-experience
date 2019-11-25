//
//  ProductDetailViewController.swift
//  ForGitExperience
//
//  Created by Lotte on 2019/11/25.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit

class ProductDetailViewController: UIViewController {

    @IBOutlet var firstImage: UIImageView!
    @IBOutlet var secondImage: UIImageView!
    @IBOutlet var thirdImage: UIImageView!

    @IBAction func viewSky(_ sender: Any) {
        firstImage.isHidden = false
        secondImage.isHidden = true
        thirdImage.isHidden = true
    }
    @IBAction func viewRed(_ sender: Any) {
        firstImage.isHidden = true
        secondImage.isHidden = false
        thirdImage.isHidden = true
    }
    @IBAction func viewBlack(_ sender: Any) {
        firstImage.isHidden = true
        secondImage.isHidden = true
        thirdImage.isHidden = false
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        firstImage.isHidden = false
        secondImage.isHidden = true
        thirdImage.isHidden = true
        // Do any additional setup after loading the view.
    }


}
