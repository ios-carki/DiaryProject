//
//  PhotoPickView.swift
//  DiaryProject
//
//  Created by Carki on 2022/08/21.
//

import UIKit

class PhotoPickView: BaseView {
    
    let pickBarButtonItem: UIBarButtonItem = {
        let a = UIBarButtonItem(title: "선택", style: .plain, target: self, action: nil)
        
        return a
    }()
    
    override func configureUI() {
        [].forEach {
            self.addSubview($0)
        }
        
    }
    
    override func setConstraints() {
        
    }
}
