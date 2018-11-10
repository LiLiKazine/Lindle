//
//  BookData.swift
//  Lindle
//
//  Created by LiLi Kazine on 2018/11/10.
//  Copyright © 2018 HNA Group Co.,Ltd. All rights reserved.
//

import RxDataSources

struct BookSection {
    var header: String
    var items: [BookItem]
}

extension BookSection: AnimatableSectionModelType {
    var identity: String {
        return header
    }
    
    init(original: BookSection, items: [BookItem]) {
        self = original
        self.items = items
    }
    
    typealias Identity = String
    
    
}

struct BookItem: IdentifiableType, Equatable {
    
    var identity: String {
        return name + " " + upDate
    }
    
    typealias Identity = String
    
    
    var name: String
    var cover: String
    var size: String
    var upDate: String
    
}
