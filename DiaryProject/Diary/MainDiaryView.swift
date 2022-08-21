//
//  MainDiaryView.swift
//  DiaryProject
//
//  Created by Carki on 2022/08/21.
//

import UIKit

import SnapKit

class MainDiaryView: BaseView {
    
    let photoImageView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFill
        view.backgroundColor = .lightGray
        return view
    }()
    
    let getPhotoButton: UIButton = {
        let view = UIButton()
        view.setTitle("선택", for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 18, weight: .heavy)
        view.setTitleColor(UIColor.black, for: .normal)
        view.backgroundColor = .white
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.gray.cgColor
        view.layer.cornerRadius = 25
        return view
    }()
    
    let titleTextField:UITextField = {
        let view = UITextField()
        
        view.borderStyle = .none
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 1
        view.text = "제목을 입력해주세요"
        view.textAlignment = .center
        view.font = .boldSystemFont(ofSize: 15)
        
        return view
    }()
    
    let dateTextField: UITextField = {
        let view = UITextField()
        
        view.borderStyle = .none
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 1
        view.text = "날짜를 입력해주세요"
        view.textAlignment = .center
        view.font = .boldSystemFont(ofSize: 15)
        
        return view
    }()
    let contentTextView: UITextView = {
        let view = UITextView()
        
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 1
      
        return view
    }()
    
    override func configureUI() {
        [photoImageView, getPhotoButton, titleTextField, dateTextField, contentTextView].forEach {
            self.addSubview($0)
        }
    }
    
    override func setConstraints() {
        
        photoImageView.snp.makeConstraints {
            $0.top.equalTo(self.safeAreaLayoutGuide)
            $0.leadingMargin.equalTo(20)
            $0.trailingMargin.equalTo(-20)
            $0.height.equalTo(self).multipliedBy(0.3)
        }
        getPhotoButton.snp.makeConstraints {
            $0.trailing.equalTo(photoImageView.snp.trailing).offset(-5)
            $0.bottom.equalTo(photoImageView.snp.bottom).offset(-5)
            $0.height.width.equalTo(50)
        }
        
        titleTextField.snp.makeConstraints {
            $0.top.equalTo(photoImageView.snp.bottom).offset(20)
            $0.leadingMargin.equalTo(20)
            $0.trailingMargin.equalTo(-20)
            $0.height.equalTo(50)
        }
        
        dateTextField.snp.makeConstraints {
            $0.top.equalTo(titleTextField.snp.bottom).offset(20)
            $0.leadingMargin.equalTo(20)
            $0.trailingMargin.equalTo(-20)
            $0.height.equalTo(50)
        }
        
        contentTextView.snp.makeConstraints {
            $0.top.equalTo(dateTextField.snp.bottom).offset(20)
            $0.leadingMargin.equalTo(20)
            $0.trailingMargin.equalTo(-20)
            $0.bottom.equalTo(self.safeAreaLayoutGuide)
        }
    }
}
