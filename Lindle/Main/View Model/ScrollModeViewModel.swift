
//
//  ScrollModeViewModel.swift
//  Lindle
//
//  Created by LiLi Kazine on 2018/11/10.
//  Copyright © 2018 HNA Group Co.,Ltd. All rights reserved.
//

import RxSwift
import RxCocoa

class ScrollModeViewModel: NSObject {
    
    private let disposeBag = DisposeBag()
    
    var sections: Observable<[BookSection]>!
    
    
    override init() {
        sections = Observable.just([BookSection(header: "header", items: [BookItem(name: "test1", cover: "cover1", size: "", update: "")]),
                                    BookSection(header: "header", items: [BookItem(name: "test2", cover: "cover2", size: "", update: "")]),
                                    BookSection(header: "header", items: [BookItem(name: "test3", cover: "cover3", size: "", update: "")]),
                                    BookSection(header: "header", items: [BookItem(name: "test4", cover: "cover4", size: "", update: "")]),
                                    BookSection(header: "header", items: [BookItem(name: "test5", cover: "cover5", size: "", update: "")])])
    }

}
