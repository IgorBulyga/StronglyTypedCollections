//
//  TableViewController.swift
//  StronglyTypedCollections
//
//  Created by Igor Bulyga on 01.12.2017.
//  Copyright © 2017 IgorBulyga. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.register(baseCell: FirstTableViewCell.self)
            tableView.register(baseCell: SecondTableViewCell.self)
            tableView.register(baseHeaderFooter: TableHeaderView.self)
            tableView.dataSource = self
            tableView.delegate = self
        }
    }
}

extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIndex = indexPath.row % 2
        if cellIndex == 0 {
            let firstCell = tableView.dequeueBaseCell(FirstTableViewCell.self, for: indexPath)
            firstCell.configureFirstCell()
            return firstCell
        } else {
            let secondCell = tableView.dequeueBaseCell(SecondTableViewCell.self, for: indexPath)
            return secondCell
        }
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueBaseHeaderFooterView(TableHeaderView.self)
        header.configureHeader()
        return header
    }
}

extension TableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
}
