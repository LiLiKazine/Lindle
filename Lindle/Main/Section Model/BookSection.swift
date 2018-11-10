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
    init(header: String, items:[BookItem]) {
        self.header = header
        self.items = items
    }
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
        return name + " " + update
    }
    
    typealias Identity = String
    
    
    var name: String
    var cover: String
    var size: String
    var update: String
    
    init(name: String, cover: String, size: String, update: String) {
        self.name = name
        self.cover = cover
        self.size = size
        self.update = update
    }
    
}
