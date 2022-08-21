//
//  MainDiaryViewController.swift
//  DiaryProject
//
//  Created by Carki on 2022/08/21.
//

import UIKit

class MainDiaryViewController: BaseViewController {
    
    let mainView = MainDiaryView()
    
    override func loadView() {
        self.view = mainView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        naviSetTitle()
    }
    
    override func configure() {
        mainView.getPhotoButton.addTarget(self, action: #selector(getPhotoButtonClicked), for: .touchUpInside)
    }
    
    @objc func getPhotoButtonClicked() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "PhotoPickViewController") as! PhotoPickViewController
        
        self.navigationController?.pushViewController(vc, animated: true) //push 화면전환
        
    }
    
    func naviSetTitle() {
        navigationController?.navigationBar.scrollEdgeAppearance = UINavigationBarAppearance()
        navigationItem.title = "Carki Diary"
        
    }
    
}
