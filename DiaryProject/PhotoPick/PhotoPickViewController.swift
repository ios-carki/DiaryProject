//
//  PhotoPickViewController.swift
//  DiaryProject
//
//  Created by Carki on 2022/08/21.
//

import UIKit

class PhotoPickViewController: BaseViewController {
    
    let mainView = PhotoPickView()
    
    override func loadView() {
        self.view = mainView
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        naviBarButton()
        searchBar()
    }
    
    func naviBarButton() {
        navigationController?.navigationBar.scrollEdgeAppearance = UINavigationBarAppearance()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "선택", style: .plain, target: self, action: #selector(naviChoiceBarButtonClicked))
        
    }
    
    @objc func naviChoiceBarButtonClicked() {
        navigationController?.popViewController(animated: true)
    }
    
    func searchBar() {
        let searchBar = UISearchBar()
        searchBar.delegate = self
        searchBar.placeholder = "사진 검색"
        
        self.view.addSubview(searchBar)
        
        searchBar.snp.makeConstraints {
            $0.top.equalTo(self.view.safeAreaLayoutGuide)
            $0.leading.trailing.equalToSuperview()
        }
    }
}

extension PhotoPickViewController: UISearchBarDelegate {
    
}

//extension PhotoPickViewController: UICollectionViewDelegate, UICollectionViewDataSource {
////    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
////        <#code#>
////    }
////
////    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
////        <#code#>
////    }
//    
//    
//}
