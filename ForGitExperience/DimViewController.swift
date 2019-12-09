//
//  DimViewController.swift
//  ForGitExperience
//
//  Created by Lotte on 2019/12/09.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit

class DimViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

//        var colors = [UIColor]()
//        colors.append(#colorLiteral(red: 0.9358513951, green: 0.1640115976, blue: 0.137254902, alpha: 1))
//        colors.append(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))
//        let gradientLayer = CAGradientLayer(frame: self.view.frame, colors: colors, startPoint: CGPoint(x: 0, y:0.7), endPoint: CGPoint(x:1, y:0.3))
//        imageView.image = gradientLayer.createGradientImage()
        imageView.setGradientHorizontal(colorOne: #colorLiteral(red: 0.9358513951, green: 0.1640115976, blue: 0.137254902, alpha: 1), colorTwo: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.3), colorThree: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))
    }

}

extension UIView {
    func setGradientHorizontal(colorOne: UIColor, colorTwo: UIColor, colorThree: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor, colorThree.cgColor]
        gradientLayer.locations = [0.0, 0.5, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)
        gradientLayer.needsDisplayOnBoundsChange = true
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
extension CAGradientLayer {

    convenience init(frame: CGRect, colors: [UIColor]) {
        self.init()
        self.frame = frame
        self.colors = []
        for color in colors {
            self.colors?.append(color.cgColor)
        }
        startPoint = CGPoint(x: 0, y: 0)
        endPoint = CGPoint(x: 1, y: 1)
    }

    convenience init(frame: CGRect, colors: [UIColor], startPoint: CGPoint, endPoint: CGPoint) {
        self.init()
        self.frame = frame
        self.colors = []
        for color in colors {
            self.colors?.append(color.cgColor)
        }
        self.startPoint = startPoint
        self.endPoint = endPoint
    }

    func createGradientImage() -> UIImage? {
        var image: UIImage? = nil
        UIGraphicsBeginImageContext(bounds.size)

        if let context = UIGraphicsGetCurrentContext() {
            render(in: context)
            image = UIGraphicsGetImageFromCurrentImageContext()
        }
        UIGraphicsEndImageContext()

        return image
    }
    
}
