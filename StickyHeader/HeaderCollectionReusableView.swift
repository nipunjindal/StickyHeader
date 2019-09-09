//
//  HeaderCollectionReusableView.swift
//  StickyHeader
//
//  Created by Nipun Jindal on 9/8/19.
//  Copyright © 2019 Nipun Jindal. All rights reserved.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
        
    @IBOutlet private weak var label: UILabel!
    
    func setText(_ string: String) {
        label.text = string
    }
}
