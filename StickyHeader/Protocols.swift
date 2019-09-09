//
//  Protocols.swift
//  StickyHeader
//
//  Created by Nipun Jindal on 9/7/19.
//  Copyright © 2019 Nipun Jindal. All rights reserved.
//

import Foundation

protocol SectionItem {
    var header: String { get }
    var rows: [RowItem] { get }
}

protocol RowItem {
    var display: String { get }
}
