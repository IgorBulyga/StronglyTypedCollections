//
//  FourthCollectionViewCell.swift
//  StronglyTypedCollections
//
//  Created by Igor Bulyga on 01.12.2017.
//  Copyright © 2017 IgorBulyga. All rights reserved.
//

import UIKit

class FourthCollectionViewCell: UICollectionViewCell { }

extension FourthCollectionViewCell: BaseReusableView {
    static var nib: UINib? {
        return UINib(nibName: "CustomCollectionViewCell", bundle: nil)
    }
}
