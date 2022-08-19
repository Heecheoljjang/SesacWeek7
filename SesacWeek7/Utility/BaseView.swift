//
//  BaseView.swift
//  SesacWeek7
//
//  Created by HeecheolYoon on 2022/08/19.
//

import UIKit

class BaseView: UIView {
    
    
    //코드 베이스일때 호출
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
        setConstraints()
    }
    
    //xib 스토리보드, 프로토콜 기반이기때문에 코드기반이라도 구현해줘야함. 
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureUI() {
        
    }
    
    func setConstraints() {
        
    }
}


//required initializer
protocol example {
    init(name: String)
}

class Mobile: example {
    let name: String
    
    required init(name: String){
        self.name = name
    }
}

//상속받고있어서 name도 초기화 해야함 그래서 super사용
//자기 자신의 프로퍼티를 초기화한 뒤에 부모꺼를 초기화해야함 -> 순서
class Apple:Mobile {
    let wwdc: String
    
    init(wwdc: String) {
        self.wwdc = wwdc

        super.init(name: "모바일")
        
    }
    
    required init(name: String) {
        fatalError("init(name:) has not been implemented")
    }
    
}

class Goodle: Mobile{
    
}

