//
//  FoodViewController.swift
//  SesacWeek7
//
//  Created by HeecheolYoon on 2022/08/17.
//

import UIKit
import SnapKit

class FoodViewController: UIViewController {
    
    //MARK: - NavigationBar
    let barTopView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemTeal
        
        return view
    }()
    
    let searchView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemTeal
        view.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        view.layer.cornerRadius = 16
    
        return view
    }()
    
    let searchBarView: UIView = {
        let searchBar = UIView()
        searchBar.backgroundColor = .white
        searchBar.layer.cornerRadius = 4
        
        return searchBar
    }()
    
    let searchBarImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "magnifyingglass")
        imageView.tintColor = .systemTeal
        
        return imageView
    }()
    
    let searchBarTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "치즈쭈꾸미 나와라 뚝딱"
        
        return textField
    }()
    
    //MARK: - Views
    let deliveryView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.backgroundColor = .white
        
        return view
    }()
    
    let oneView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.backgroundColor = .white
        
        return view
    }()
    
    let packageView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.backgroundColor = .white

        return view
    }()
    
    let bMartView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.backgroundColor = .white

        return view
    }()
    
    let mealKitView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.backgroundColor = .white

        return view
    }()
    
    let storeView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.backgroundColor = .white

        return view
    }()
    
    let shoppingView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.backgroundColor = .white

        return view
    }()
    
    let giftView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.backgroundColor = .white

        return view
    }()
    
    let nationWideView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.backgroundColor = .white

        return view
    }()
    
    //MARK: - adView
    
    let adView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.backgroundColor = .systemPink
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray4

        addViews()
        
        setUpNavigationBar()
        
        setUpMainViews()
    }
    
    func addViews() {
        [barTopView, searchView, searchBarView, searchBarTextField, searchBarImageView, deliveryView, oneView, packageView, bMartView, mealKitView, storeView, shoppingView, giftView, nationWideView, adView].forEach {
            view.addSubview($0)
        }
    }
    
    func setUpNavigationBar() {
        
        let squareButton = UIBarButtonItem(image: UIImage(systemName: "square.grid.2x2"), style: .plain, target: self, action: nil)
        let bellButton = UIBarButtonItem(image: UIImage(systemName: "bell"), style: .plain, target: self, action: nil)
        let smileButton = UIBarButtonItem(image: UIImage(systemName: "smiley"), style: .plain, target: self, action: nil)
        
        navigationController?.navigationBar.backgroundColor = .systemTeal
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white, .font: UIFont.systemFont(ofSize: 20, weight: .semibold)]
        title = "회사"
        
        navigationItem.leftBarButtonItem = squareButton
        navigationItem.rightBarButtonItems = [smileButton, bellButton]
        
        let stackViewAppearance = UIStackView.appearance(whenContainedInInstancesOf: [UINavigationBar.self])
        stackViewAppearance.spacing = -6
        
        
        barTopView.snp.makeConstraints { make in
            make.top.equalTo(0)
            make.width.equalTo(view.frame.size.width)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.top)
        }
        
        searchView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.height.equalTo(56)
            make.width.equalTo(view.frame.size.width)
        }
        
        searchBarView.snp.makeConstraints { make in
            make.top.equalTo(searchView).offset(4)
            make.leading.equalTo(view).offset(20)
            make.trailing.equalTo(view).offset(-20)
            make.bottom.equalTo(searchView).offset(-8)
        }
        
        searchBarImageView.snp.makeConstraints { make in
            make.top.equalTo(searchBarView).inset(12)
            make.bottom.equalTo(searchBarView).inset(12)
            make.leading.equalTo(searchBarView).inset(12)
            make.width.equalTo(24)
        }
        
        searchBarTextField.snp.makeConstraints { make in
            make.leading.equalTo(searchBarImageView.snp.trailing).offset(8)
            make.top.equalTo(searchBarImageView.snp.top)
            make.trailing.equalTo(searchBarView).offset(-8)
        }
    }
    
    func setUpMainViews() {
        
        deliveryView.snp.makeConstraints { make in
            let width = (view.frame.size.width - 20 - 20 - 16) / 2
            make.leading.equalTo(view).offset(20)
            make.top.equalTo(searchView.snp.bottom).offset(20)
            make.width.equalTo(width)
            make.height.equalTo(width)
        }
        
        oneView.snp.makeConstraints { make in
            let width = (view.frame.size.width - 20 - 20 - 16) / 2
            make.trailing.equalTo(view).offset(-20)
            make.top.equalTo(deliveryView)
            make.width.equalTo(width)
            make.height.equalTo(width)
        }
        
        packageView.snp.makeConstraints { make in
            let width = view.frame.size.width - 20 - 20
            make.leading.equalTo(view).offset(20)
            make.top.equalTo(oneView.snp.bottom).offset(16)
            make.width.equalTo(width)
            make.height.equalTo(width * 0.2)
        }
        
        bMartView.snp.makeConstraints { make in
            let width = (view.frame.size.width - 20 - 20 - 16) / 2
            make.leading.equalTo(view).offset(20)
            make.top.equalTo(packageView.snp.bottom).offset(16)
            make.width.equalTo(width)
            make.height.equalTo(width * 0.5)
        }
        
        mealKitView.snp.makeConstraints { make in
            let width = (view.frame.size.width - 20 - 20 - 12) / 2
            make.trailing.equalTo(view).offset(-20)
            make.top.equalTo(bMartView)
            make.width.equalTo(width)
            make.height.equalTo(width * 0.5)
        }
        
        storeView.snp.makeConstraints { make in
            let width = view.frame.size.width - 20 - 20
            make.leading.equalTo(view).offset(20)
            make.top.equalTo(bMartView.snp.bottom).offset(16)
            make.width.equalTo(width)
            make.height.equalTo(width * 0.2)
        }
        
        shoppingView.snp.makeConstraints { make in
            let width = (view.frame.size.width - 20 - 20 - 16 - 16) / 3
            make.leading.equalTo(view).offset(20)
            make.top.equalTo(storeView.snp.bottom).offset(16)
            make.width.equalTo(width)
            make.height.equalTo(width * 0.6)
        }
        
        giftView.snp.makeConstraints { make in
            let width = (view.frame.size.width - 20 - 20 - 16 - 16) / 3
            make.leading.equalTo(shoppingView.snp.trailing).offset(16)
            make.top.equalTo(shoppingView)
            make.width.equalTo(width)
            make.height.equalTo(width * 0.6)
        }
        
        nationWideView.snp.makeConstraints { make in
            let width = (view.frame.size.width - 20 - 20 - 16 - 16) / 3
            make.leading.equalTo(giftView.snp.trailing).offset(16)
            make.top.equalTo(shoppingView)
            make.width.equalTo(width)
            make.height.equalTo(width * 0.6)
        }
        
        adView.snp.makeConstraints { make in
            let width = view.frame.size.width - 20 - 20
            make.leading.equalTo(view).offset(20)
            make.top.equalTo(shoppingView.snp.bottom).offset(16)
            make.width.equalTo(width)
            make.height.equalTo(width / 3)
        }
    }
    

}
