//
//  ListViewController.swift
//  ForGitExperience
//
//  Created by Lotte on 20/08/2019.
//  Copyright © 2019 uykim3. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {

    var delegate: MapAlertViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.preferredContentSize.height = 220
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel!.text = "\(indexPath.row) 번째 옵션입니다."
        cell.textLabel!.font = UIFont.systemFont(ofSize: 13)

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.delegate?.didSelectRowAt(indexPath: indexPath)
    }

}