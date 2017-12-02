//
//  FirstCollectionViewCell.swift
//  StronglyTypedCollections
//
//  Created by Igor Bulyga on 01.12.2017.
//  Copyright © 2017 IgorBulyga. All rights reserved.
//

import UIKit

class FirstCollectionViewCell: UICollectionViewCell {
    func configureFirstCell() {
        let view = UIView(frame: .zero)
        view.backgroundColor = UIColor(r: 246, g: 145, b: 36)
        self.backgroundView = view
    }
}

extension FirstCollectionViewCell: BaseReusableView {}
