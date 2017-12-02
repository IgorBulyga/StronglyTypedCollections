//
//  UICollectionView+Dequeuing.swift
//  StronglyTypedCollections
//
//  Created by Igor Bulyga on 01.12.2017.
//  Copyright © 2017 IgorBulyga. All rights reserved.
//

import UIKit

typealias BaseCollectionViewCell = UICollectionViewCell & BaseReusableView
typealias BaseSupplementaryView = UICollectionReusableView & BaseReusableView

extension UICollectionView {
    func register(baseCell cellType: BaseCollectionViewCell.Type) {
        if let cellNib = cellType.nib {
            self.register(cellNib, forCellWithReuseIdentifier: cellType.identifier)
        } else {
            self.register(cellType, forCellWithReuseIdentifier: cellType.identifier)
        }
    }

    func register(baseReusableView reusableView: BaseSupplementaryView.Type, forKind kind: String) {
        if let nib = reusableView.nib {
            self.register(nib,
                          forSupplementaryViewOfKind: kind,
                          withReuseIdentifier: reusableView.identifier)
        } else {
            self.register(reusableView,
                          forSupplementaryViewOfKind: kind,
                          withReuseIdentifier: reusableView.identifier)
        }
    }

    func dequeueBaseCell<Cell: BaseCollectionViewCell>(_ cell: Cell.Type,
                                                         for indexPath: IndexPath) -> Cell {
        let dequeuedCell = self.dequeueReusableCell(withReuseIdentifier: cell.identifier, for: indexPath)
        guard let typedCell = dequeuedCell as? Cell else {
            fatalError("Wrong cell type \(String(describing: dequeuedCell.self))")
        }
        return typedCell
    }

    func dequeueSupplementaryView<View: BaseSupplementaryView>(_ view: View.Type,
                                                               with kind: String,
                                                               for indexPath: IndexPath) -> View {
        let dequeuedView = self.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: view.identifier, for: indexPath)
        guard let typedView = dequeuedView as? View else {
            fatalError("Wrong view type \(String.init(describing: dequeuedView.self))")
        }
        return typedView
    }
}
