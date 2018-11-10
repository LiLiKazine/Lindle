//
//  ScrollModeViewController.swift
//  Lindle
//
//  Created by LiLi Kazine on 2018/11/10.
//  Copyright © 2018 HNA Group Co.,Ltd. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import RxDataSources

class ScrollModeViewController: UIViewController, UICollectionViewDelegate {

    @IBOutlet weak var bookCollection: UICollectionView!
    
    private let disposeBag = DisposeBag()
    private let scrollModeViewModel = ScrollModeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollection()
    }
    
    private func setupCollection() {
        let dataSource = RxCollectionViewSectionedReloadDataSource<BookSection>(configureCell: {(dataSource, collectionView, indexPath, element) -> UICollectionViewCell in
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BookCollectionCell", for: indexPath) as! BookCollectionCell
            cell.setup(img: element.cover, name: element.name, size: element.size)
            return cell
        })
        
        scrollModeViewModel.sections.bind(to: bookCollection.rx.items(dataSource: dataSource)).disposed(by: disposeBag)
        
        bookCollection.rx.itemSelected.map{ indexPath in
            return (indexPath: indexPath, item: dataSource[indexPath])
            }.subscribe(onNext: { pair in
                Log(message: pair)
            }).disposed(by: disposeBag)
        
        bookCollection.rx.setDelegate(self).disposed(by: disposeBag)
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
