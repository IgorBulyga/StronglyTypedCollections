//
//  UITableView+Dequeuing.swift
//  StronglyTypedCollections
//
//  Created by Igor Bulyga on 01.12.2017.
//  Copyright © 2017 IgorBulyga. All rights reserved.
//

import UIKit

typealias BaseTableViewCell = UITableViewCell & BaseReusableView
typealias BaseHeaderFooterView = UITableViewHeaderFooterView & BaseReusableView

extension UITableView {
    func register(baseCell cellType: BaseTableViewCell.Type) {
        if let cellNib = cellType.nib {
            self.register(cellNib, forCellReuseIdentifier: cellType.identifier)
        } else {
            self.register(cellType, forCellReuseIdentifier: cellType.identifier)
        }
    }

    func register(baseHeaderFooter viewType: BaseHeaderFooterView.Type) {
        if let nib = viewType.nib {
            self.register(nib, forHeaderFooterViewReuseIdentifier: viewType.identifier)
        } else {
            self.register(viewType, forHeaderFooterViewReuseIdentifier: viewType.identifier)
        }
    }

    func dequeueBaseCell<Cell: BaseTableViewCell>(_ cell: Cell.Type, for indexPath: IndexPath) -> Cell {
        let dequeuedCell = self.dequeueReusableCell(withIdentifier: cell.identifier, for: indexPath)
        guard let typedCell = dequeuedCell as? Cell else {
            fatalError("Wrong cell type \(String(describing: dequeuedCell.self))")
        }
        return typedCell
    }

    func dequeueBaseHeaderFooterView<View: BaseHeaderFooterView>(_ view: View.Type) -> View {
        let dequeuedView = self.dequeueReusableHeaderFooterView(withIdentifier: view.identifier)
        guard let typedView = dequeuedView as? View else {
            fatalError("Wrong view type \(String(describing: dequeuedView.self))")
        }
        return typedView
    }
}

