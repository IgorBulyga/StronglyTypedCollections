//
//  SecondCollectionViewCell.swift
//  StronglyTypedCollections
//
//  Created by Igor Bulyga on 01.12.2017.
//  Copyright © 2017 IgorBulyga. All rights reserved.
//

import UIKit

class SecondCollectionViewCell: UICollectionViewCell {

    func configureSecondCell() {
        backgroundView?.backgroundColor = UIColor(r: 60, g: 216, b: 109)
    }
}

extension SecondCollectionViewCell: BaseReusableView { }
