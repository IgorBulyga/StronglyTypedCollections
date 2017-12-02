//
//  ThirdCollectionViewCell.swift
//  StronglyTypedCollections
//
//  Created by Igor Bulyga on 01.12.2017.
//  Copyright © 2017 IgorBulyga. All rights reserved.
//

import UIKit

class ThirdCollectionViewCell: UICollectionViewCell {

    func configureThirdCell() {
        let view = UIView(frame: .zero)
        view.backgroundColor = UIColor(r: 248, g: 199, b: 49)
        backgroundView = view
    }
}

extension ThirdCollectionViewCell: BaseReusableView {
    static var identifier: String {
        return "CustomIdentifier"
    }
}
