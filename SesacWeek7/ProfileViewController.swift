//
//  ProfileViewController.swift
//  SesacWeek7
//
//  Created by HeecheolYoon on 2022/08/18.
//

import UIKit

extension NSNotification.Name {
    static let saveButton = NSNotification.Name("saveButtonNotification")
}

class ProfileViewController: UIViewController {

    let saveButton: UIButton = {
        let button = UIButton()
        var configuration = UIButton.Configuration.filled()
        
        configuration.title = "저장"
        configuration.baseForegroundColor = .black
        configuration.baseBackgroundColor = .systemPink
        configuration.cornerStyle = .capsule
        
        button.configuration = configuration
    
        return button
    }()
    
    let nameTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "이름을 입력"
        view.backgroundColor = .brown
        view.textColor = .white
        
        return view
    }()
    
    var saveButtonActionHandler: ((String) -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemTeal
        
        configure()
        
        saveButton.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
        
        NotificationCenter.default.addObserver(self, selector: #selector(saveButtonNotificationObserver(notification: )), name: NSNotification.Name("test"), object: nil)
        
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name("test"), object: nil)
    }
    
    @objc func saveButtonNotificationObserver(notification: NSNotification) {
        print(#function)
        //any이기떄문에 타입캐스팅
        if let name = notification.userInfo?["name"] as? String {
            print(name)
            self.nameTextField.text = name
        } else {
            
        }
    }
    
    @objc func saveButtonTapped() {
        
        //1. 클로저 방법
        //값 전달 => 클로저구문
//        saveButtonActionHandler?(nameTextField.text!)
        
        //2. Notification
        NotificationCenter.default.post(name: NSNotification.Name("saveButtonNotification"), object: nil, userInfo: ["name": nameTextField.text!, "value": 12345])
        
        //화면 내림
        dismiss(animated: true)
    }
    
    func configure() {
        [saveButton, nameTextField].forEach { view.addSubview($0) }
        
        nameTextField.snp.makeConstraints { make in
            make.leading.trailing.equalTo(view).inset(50)
            make.top.equalTo(50)
            make.height.equalTo(50)
        }
        
        saveButton.snp.makeConstraints { make in
            make.width.height.equalTo(100)
            make.center.equalTo(view)
        }
        
    }
    
}
