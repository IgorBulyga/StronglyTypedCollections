//
//  CollectionViewController.swift
//  StronglyTypedCollections
//
//  Created by Igor Bulyga on 01.12.2017.
//  Copyright © 2017 IgorBulyga. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView! {
        didSet {
            collectionView.register(baseCell: FirstCollectionViewCell.self)
            collectionView.register(baseCell: SecondCollectionViewCell.self)
            collectionView.register(baseCell: ThirdCollectionViewCell.self)
            collectionView.register(baseCell: FourthCollectionViewCell.self)
            collectionView.register(baseReusableView: CustomCollectionHeaderView.self,
                                    forKind: UICollectionElementKindSectionHeader)
            collectionView.delegate = self
            collectionView.dataSource = self
        }
    }
}

extension CollectionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let randomCell = indexPath.item % Int(arc4random_uniform(4) + 1)
        if randomCell == 0 {
            let firstCell = collectionView.dequeueBaseCell(FirstCollectionViewCell.self, for: indexPath)
            firstCell.configureFirstCell()
            return firstCell
        } else if randomCell == 1 {
            let secondCell = collectionView.dequeueBaseCell(SecondCollectionViewCell.self, for: indexPath)
            return secondCell
        } else if randomCell == 2 {
            let thirdCell = collectionView.dequeueBaseCell(ThirdCollectionViewCell.self, for: indexPath)
            thirdCell.configureThirdCell()
            return thirdCell
        } else if randomCell == 3 {
            let fourthCell = collectionView.dequeueBaseCell(FourthCollectionViewCell.self, for: indexPath)
            return fourthCell
        } else {
            fatalError("Unsupported cell type")
        }
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionElementKindSectionHeader:
            let header = collectionView
                .dequeueSupplementaryView(CustomCollectionHeaderView.self,
                                          with: kind,
                                          for: indexPath)
            header.configureHeader()
            return header
        default:
            fatalError()
        }
    }
}

extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: 50)
    }
}
