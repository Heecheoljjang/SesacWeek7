//
//  WriteViewController.swift
//  SesacWeek7
//
//  Created by HeecheolYoon on 2022/08/19.
//

import UIKit

//액션에 대한 제어
class WriteViewController: BaseViewController {
    
    var mainView = WriteView()
    
    //viewDidLoad보다 먼저 호출
    //로드뷰는 super.loadView X => nil이 들어옴.
    override func loadView() {
        self.view = mainView
        //self.view = WriteView() 처럼해도되는데 기능을 만들어줘야할수도있어서 비추
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    override func configure() {
        
        mainView.titleTextField.addTarget(self, action: #selector(titleTextFieldTapped(_:)), for: .editingDidEndOnExit)
    }
        
    @objc func titleTextFieldTapped(_ textField: UITextField) {
        guard let text = textField.text, text.count > 0 else {
            showAlert(title: "제목", button: "확인")
            return
        }
    }
}
