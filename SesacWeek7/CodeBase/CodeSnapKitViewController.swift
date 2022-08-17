//
//  CodeSnapKitViewController.swift
//  SesacWeek7
//
//  Created by HeecheolYoon on 2022/08/17.
//

import UIKit

import SnapKit

class CodeSnapKitViewController: UIViewController {
    
    let photoImageView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFill
        view.backgroundColor = .brown
        
        return view
    }()
    
    let titleTextField: UITextField = {
        print("TExtfield")
        let textField = UITextField()
        //변경되지 않는 기본 속성들을 처음부터 줘버림.
        textField.borderStyle = .none
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.borderWidth = 1
        textField.placeholder = "제목을 입력해주세요"
        textField.textAlignment = .center
        textField.font = .boldSystemFont(ofSize: 15)
        
        return textField
    }()
    
    let dateTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .none
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.borderWidth = 1
        textField.placeholder = "날짜을 입력해주세요"
        textField.textAlignment = .center
        textField.font = .boldSystemFont(ofSize: 15)
        
        return textField
    }()
    
    let contentTextView: UITextView = {
        let textView = UITextView()
        
        textView.layer.borderColor = UIColor.black.cgColor
        textView.layer.borderWidth = 1
        
        
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        print(#function)
        configureUI()
    }
    
    func configureUI() {
        
        //for each vs for in
        //구현 원리나 동작 구조가 다름.
        
        [photoImageView, titleTextField, dateTextField, contentTextView].forEach {
            view.addSubview($0)
        }
        photoImageView.backgroundColor = .lightGray
        photoImageView.contentMode = .scaleToFill
        
        //최초는 make, 다시 할땐 remake
        photoImageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leadingMargin.equalTo(20) //leading이랑 leading margin이랑 다른게웡미 -> 마진은 뷰를 기준으로 -> documentation에 정리
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(view).multipliedBy(0.3)
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
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
    }

}
