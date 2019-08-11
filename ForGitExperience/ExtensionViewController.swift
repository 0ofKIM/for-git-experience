//
//  ExtensionViewController.swift
//  ForGitExperience
//
//  Created by Lotte on 24/07/2019.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit

class ExtensionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let distance = 42.0.km + 195.m
        print("마라톤의 총 거리는 \(distance)m입니다.")
        
        let d = 3
        d.repeatRun(task: {
            print("반갑습니다!")
        })
//        트레일링 클로저로 사용하면
//        d.repeatRun {
//            print("반갑습니다!")
//        }
    }
    
}

//MARK: - Extension과 연산프로퍼티
extension Double {

    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var description: String {
        return "\(self)km는 \(self.km)m, \(self)cm는 \(self.cm)m, \(self)mm는 \(self.mm)m입니다."
    }

}

//MARK: - Extension과 메소드
extension Int {

    func repeatRun(task: () -> Void) {
        for _ in 0 ..< self {
            task()
        }
    }
    
}
