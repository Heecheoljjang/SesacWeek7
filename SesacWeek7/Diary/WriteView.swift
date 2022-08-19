//
//  WriteView.swift
//  SesacWeek7
//
//  Created by HeecheolYoon on 2022/08/19.
//

import UIKit
import SnapKit

class WriteView: BaseView {
    
    let photoImageView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFill
        view.backgroundColor = .brown
        
        return view
    }()
    
    let titleTextField: BlackRadiusTextField = {
        print("TExtfield")
        let textField = BlackRadiusTextField()
        //변경되지 않는 기본 속성들을 처음부터 줘버림.
        textField.placeholder = "제목을 입력해주세요"
        
        return textField
    }()
    
    let dateTextField: BlackRadiusTextField = {
        let textField = BlackRadiusTextField()
        textField.placeholder = "날짜을 입력해주세요"
        
        return textField
    }()
    
    let contentTextView: UITextView = {
        let textView = UITextView()
        
        textView.layer.borderColor = UIColor.black.cgColor
        textView.layer.borderWidth = 1
        
        
        return textView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func configureUI() {
        [photoImageView, titleTextField, dateTextField, contentTextView].forEach {
            self.addSubview($0)
        }
        photoImageView.backgroundColor = .lightGray
        photoImageView.contentMode = .scaleToFill
    }
    
    override func setConstraints() {
        photoImageView.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide)
            make.leadingMargin.equalTo(20) //leading이랑 leading margin이랑 다른게웡미 -> 마진은 뷰를 기준으로 -> documentation에 정리
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(self).multipliedBy(0.3)
        }
        
        titleTextField.snp.makeConstraints { make in
            make.top.equalTo(photoImageView.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20) //leading이랑 leading margin이랑 다른게웡미
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(50)
        }
        
        dateTextField.snp.makeConstraints { make in
            make.top.equalTo(titleTextField.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20) //leading이랑 leading margin이랑 다른게웡미
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(50)
        }
        
        contentTextView.snp.makeConstraints { make in
            make.top.equalTo(dateTextField.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.bottom.equalTo(self.safeAreaLayoutGuide)
        }
    }
}
