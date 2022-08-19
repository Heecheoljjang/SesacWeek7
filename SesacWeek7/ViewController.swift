//
//  ViewController.swift
//  SesacWeek7
//
//  Created by HeecheolYoon on 2022/08/16.
//

import UIKit
import SesacUIFramework
import SnapKit

class ViewController: UIViewController {
    
    let transitionButton: UIButton = {
        let button = UIButton()
        var configuration = UIButton.Configuration.filled()
        configuration.title = "하이"
        configuration.baseForegroundColor = .black
        configuration.baseBackgroundColor = .systemPink
        button.configuration = configuration
    
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        
        transitionButton.addTarget(self, action: #selector(transitionButtonTapped), for: .touchUpInside)
        
        //self는 나의 클래스 인스턴스에서 받을거라는거의미
        NotificationCenter.default.addObserver(self, selector: #selector(saveButtonNotificationObserver(notification:)), name: NSNotification.Name("saveButtonNotification"), object: nil)
        
    }
    
    @objc func saveButtonNotificationObserver(notification: NSNotification) {
        
        //any이기떄문에 타입캐스팅
        if let name = notification.userInfo?["name"] as? String {
            print(name)
            self.transitionButton.configuration?.title = name
        } else {
            
        }
    }
    
    @objc func transitionButtonTapped() {
        
        NotificationCenter.default.post(name: NSNotification.Name("test"), object: nil, userInfo: ["name": "\(Int.random(in: 1...100))", "value": 12345])
        
        let vc = ProfileViewController()
        
        vc.saveButtonActionHandler = { name in
            self.transitionButton.configuration?.title = name
        
        }
        
        present(vc, animated: true)
    }
    
    func configure() {
        view.addSubview(transitionButton)
        
        transitionButton.snp.makeConstraints { make in
            make.width.height.equalTo(200)
            make.center.equalTo(view)
        }
    }
}

