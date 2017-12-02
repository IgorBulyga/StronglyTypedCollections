//
//  BaseReusableView.swift
//  StronglyTypedCollections
//
//  Created by Igor Bulyga on 01.12.2017.
//  Copyright © 2017 IgorBulyga. All rights reserved.
//

import UIKit

protocol BaseReusableView {
    static var identifier: String { get }
    static var nib: UINib? { get }
}

extension BaseReusableView {
    static var identifier: String {
        return String(describing: self)
    }

    static var nib: UINib? {
        let nibName = String(describing: self)
        guard Bundle.main.path(forResource: nibName, ofType: "nib") != nil else {
            return nil
        }
        return UINib(nibName: nibName, bundle: nil)
    }
}
