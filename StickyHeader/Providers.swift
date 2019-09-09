//
//  Providers.swift
//  StickyHeader
//
//  Created by Nipun Jindal on 9/8/19.
//  Copyright © 2019 Nipun Jindal. All rights reserved.
//

import Foundation

struct FirstSection: SectionItem {
    var header: String = "First Item"
    
    var rows: [RowItem] = [RowItemImpl("Item1"), RowItemImpl("Item2")]
}

struct SecondSection: SectionItem {
    var header: String = "Second Item"
    
    var rows: [RowItem] = [RowItemImpl("Item3"), RowItemImpl("Item4")]
}

struct ThirdSection: SectionItem {
    var header: String = "Third Item"
    
    var rows: [RowItem] = [RowItemImpl("Item5"), RowItemImpl("Item6")]
}

struct RowItemImpl: RowItem {
    var display: String
    
    init(_ display: String) {
        self.display = display
    }
}
