//
//  CustomCollectionHeaderView.swift
//  StronglyTypedCollections
//
//  Created by Igor Bulyga on 01.12.2017.
//  Copyright © 2017 IgorBulyga. All rights reserved.
//

import UIKit

class CustomCollectionHeaderView: UICollectionReusableView {

    @IBOutlet weak var headerLabel: UILabel!
    func configureHeader() {
        headerLabel.textColor = UIColor(r: 245, g: 31, b: 85)
    }
}

extension CustomCollectionHeaderView: BaseReusableView { } 
