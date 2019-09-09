//
//  UberCollectionViewController.swift
//  StickyHeader
//
//  Created by Nipun Jindal on 9/7/19.
//  Copyright © 2019 Nipun Jindal. All rights reserved.
//

import UIKit

private let rowReuseIdentifier = "RowCell"
private let headerReuseIdentifier = "HeaderCell"

class UberCollectionViewController: UICollectionViewController {
    
    private var data: [SectionItem] = [FirstSection(), SecondSection(), ThirdSection()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         self.clearsSelectionOnViewWillAppear = false

        // Do any additional setup after loading the view.
        if let layout = collectionViewLayout as? UICollectionViewFlowLayout {
            layout.sectionHeadersPinToVisibleBounds = true
        }
    }

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if (kind == UICollectionView.elementKindSectionHeader) {
           if let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerReuseIdentifier, for: indexPath) as? HeaderCollectionReusableView {
                // Customize headerView here
                headerView.setText(data[indexPath.section].header)
                return headerView
            }
       }
       fatalError()
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return data.count
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return data[section].rows.count
    }

    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: rowReuseIdentifier, for: indexPath) as? RowCollectionViewCell {
            cell.setText(data[indexPath.section].rows[indexPath.row].display)
            return cell
        }
        fatalError()
    }
}
