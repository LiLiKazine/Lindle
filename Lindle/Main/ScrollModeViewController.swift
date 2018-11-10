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

class ScrollModeViewController: UIViewController {

    @IBOutlet weak var bookCollection: UICollectionView!
    
    private let disposeBag = DisposeBag()
    private let scrollModeViewModel = ScrollModeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    private func setupCollection() {
        let dataSource = RxCollectionViewSectionedReloadDataSource<BookSection>(configureCell: {[weak self] (dataSource, collctionView, indexPath, element) -> UICollectionViewCell in
            return UICollectionViewCell()
        })
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
