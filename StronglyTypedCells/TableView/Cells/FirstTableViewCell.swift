//
//  FirstTableViewCell.swift
//  StronglyTypedCollections
//
//  Created by Igor Bulyga on 01.12.2017.
//  Copyright © 2017 IgorBulyga. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell {

    func configureFirstCell() {
        let view = UIView(frame: .zero)
        view.backgroundColor = UIColor(r: 245, g: 31, b: 85)
        backgroundView = view
    }
}

extension FirstTableViewCell: BaseReusableView { }
