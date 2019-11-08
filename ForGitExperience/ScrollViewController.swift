//
//  ScrollViewController.swift
//  ForGitExperience
//
//  Created by Lotte on 31/07/2019.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var cityImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.delegate = self
    }

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.cityImageView
    }
    
}
