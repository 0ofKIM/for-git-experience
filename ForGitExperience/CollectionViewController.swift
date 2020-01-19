//
//  CollectionViewController.swift
//  ForGitExperience
//
//  Created by Lotte on 04/08/2019.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController {

    var items = ["1","2","3","4","5"]
    @IBOutlet var collectionView: UICollectionView!
    
    @IBOutlet weak var redButton: UIButton!
    @IBAction func clickRedButton(_ sender: Any) {
        for i in 0...items.count-1 {
            items[i] = "red"
        }
        collectionView.reloadData()
    }
    @IBOutlet weak var orangeButton: UIButton!
    @IBAction func clickOrangeButton(_ sender: Any) {
        for i in 0...items.count-1 {
            items[i] = "orange"
        }
        collectionView.reloadData()
    }
    @IBOutlet weak var yellowButton: UIButton!
    @IBAction func clickYellowButton(_ sender: Any) {
        for i in 0...items.count-1 {
            items[i] = "yellow"
        }
        collectionView.reloadData()
    }
    
    let reuseIdentifier = "testCell"

    override func viewDidLoad() {
        super.viewDidLoad()
//        collectionView.delegate = self  //storyboard에서 직접 연결
//        collectionView.dataSource = self//storybaord에서 직접 연결
        initRefresh()
    }

    // UIRefreshControl 초기 설정
    func initRefresh() {
        //UIRefreshControl 객체 생성
        let refresh = UIRefreshControl()

        //생성한 refresh(control)를 컬렉션뷰에 붙임
        if #available(iOS 10.0, *) {
            collectionView.refreshControl = refresh
        } else {
            collectionView.addSubview(refresh)
        }

        //해당 refresh의 액션에 대한 행위를 정의한 메소드 생성
        //.valueChanged가 일어났을 때 해당 메소드를 실행해라.
        refresh.addTarget(self, action: #selector(updateUI(refresh:)), for: .valueChanged)
        refresh.attributedTitle = NSAttributedString(string: "Pull To Refresh")
    }

    // Refresh에 대한 액션의 메소드(새로고침 함수)
    @objc func updateUI(refresh: UIRefreshControl) {
        refresh.endRefreshing() // 리프레쉬 종료
        collectionView.reloadData() // 테이블 뷰 로드
    }

}

extension CollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! TestCollectionViewCell

        cell.myLabel.text = self.items[indexPath.item]
        cell.backgroundColor = UIColor.cyan

        return cell
    }

}
