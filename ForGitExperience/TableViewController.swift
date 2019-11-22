//
//  TableViewController.swift
//  ForGitExperience
//
//  Created by Lotte on 2019/11/21.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    @IBOutlet var addButton: UIButton!
    var cellCount = 3

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }

    @IBAction func addCell(_ sender: Any) {
        cellCount = 20
        tableView.reloadData()
    }
}

extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellCount
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "hi"

        return cell
    }

}
