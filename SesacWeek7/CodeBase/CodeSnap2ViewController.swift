//
//  CodeSnap2ViewController.swift
//  SesacWeek7
//
//  Created by HeecheolYoon on 2022/08/17.
//

import UIKit
import SnapKit

class CodeSnap2ViewController: UIViewController {
    
    let blackView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()

    let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    let yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        [redView, blackView].forEach {
            view.addSubview($0)
        }
        
        //블랙안에 옐로 넣을때
        blackView.addSubview(yellowView) //containerView, stackView는 서브뷰말고 다른 형태로 구현해야함.
        
        redView.snp.makeConstraints { make in
            make.width.equalTo(200)
            make.height.equalTo(200)
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.centerX.equalTo(view)
        }
        
        blackView.snp.makeConstraints { make in
            //make.edges.equalTo(redView).offset(50)
            
            make.edges.equalTo(redView).inset(50) // 레드뷰 안에 블랙뷰 있는게아님. 서브뷰로 넣어야 안에 있게 되는거
            
            //RTL 아랍처럼 오른쪽부터 글씨 쓰는나라가있음.
            //아랍에서도 left나 right는 무조건 왼쪽 오른쪽
            //leading은 오른쪽일 수도 있음.
            //leading, left/ trailing, right
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
