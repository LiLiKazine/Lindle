//
//  BookCell.swift
//  Lindle
//
//  Created by LiLi Kazine on 2018/11/10.
//  Copyright © 2018 HNA Group Co.,Ltd. All rights reserved.
//

import UIKit

class BookCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var cover: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var size: UILabel!
    
    
    func setup(img: String, name: String, size: String) {
        self.cover.image = UIImage(named: img)
        self.cover.contentMode = .scaleAspectFit
        self.name.text = name
        self.size.text = size
    }
}
