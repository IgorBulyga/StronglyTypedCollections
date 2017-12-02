//
//  TableHeaderView.swift
//  StronglyTypedCollections
//
//  Created by Igor Bulyga on 02.12.2017.
//  Copyright © 2017 IgorBulyga. All rights reserved.
//

import UIKit

class TableHeaderView: UITableViewHeaderFooterView {

    @IBOutlet weak var headerLabel: UILabel!

    func configureHeader() {
        let view = UIView(frame: .zero)
        view.backgroundColor = UIColor(r: 60, g: 129, b: 250)
        backgroundView = view
        headerLabel.textColor = UIColor.white
    }
}

extension TableHeaderView: BaseReusableView { }
