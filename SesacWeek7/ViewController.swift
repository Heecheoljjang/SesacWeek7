//
//  ViewController.swift
//  SesacWeek7
//
//  Created by HeecheolYoon on 2022/08/16.
//

import UIKit
import SesacUIFramework

class ViewController: UIViewController {
    
    var name = "123"
    
    private var age = 234

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let vc = KakaoTalkViewController()
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
        
//        showMyAlert(title: "테스트 alert", message: "테스트 메세지", buttonTitle: "변경") { _ in
//            self.view.backgroundColor = .systemTeal
//        }
        testOpen()
        
//        let image = UIImage(systemName: "star.fill")!
//        let shareURL = "https://www.apple.com"
//        let text = "WWDC Whats's New"
//        sesacShowActivityViewController(shareImage: image, shareURL: shareURL, shareText: text)
//
        
        //OpenWebView.presentWebViewController(self, url: "https://www.naver.com", transitionStyle: .present)
        
        
    }

}

