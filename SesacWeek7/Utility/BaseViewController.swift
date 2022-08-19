//
//  BaseViewController.swift
//  SesacWeek7
//
//  Created by HeecheolYoon on 2022/08/19.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = .white
        configure()
        //setConstraints()
    }
    
    func configure() {
        
    }
  
    //view에서 다 잡아버리므로 필요업승ㅁ.
//    func setConstraints() {
//
//    }
    
    func showAlert(title: String, button: String) {
        let alert = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let ok = UIAlertAction(title: button, style: .cancel, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true)
    }
}
