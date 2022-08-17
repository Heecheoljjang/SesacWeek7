//
//  KakaoTalkViewController.swift
//  SesacWeek7
//
//  Created by HeecheolYoon on 2022/08/17.
//

import UIKit
import SnapKit

class KakaoTalkViewController: UIViewController {

    //MARK: Button
    let closeButton: UIButton = {
        let button = UIButton()
        var configure = UIButton.Configuration.plain()
        configure.image = UIImage(systemName: "xmark")
        configure.baseForegroundColor = .white
        configure.buttonSize = .large
        configure.preferredSymbolConfigurationForImage = UIImage.SymbolConfiguration(pointSize: 18)
        button.configuration = configure
        
        return button
    }()

    let giftButton: UIButton = {
        let button = UIButton()
        var configure = UIButton.Configuration.plain()
        configure.image = UIImage(systemName: "gift.circle")
        configure.baseForegroundColor = .white
        configure.buttonSize = .large
        configure.preferredSymbolConfigurationForImage = UIImage.SymbolConfiguration(pointSize: 18)

        button.configuration = configure
        
        return button
    }()

    let qrCodeButton: UIButton = {
        let button = UIButton()
        var configure = UIButton.Configuration.plain()
        configure.image = UIImage(systemName: "circle.grid.3x3.circle")
        configure.baseForegroundColor = .white
        configure.preferredSymbolConfigurationForImage = UIImage.SymbolConfiguration(pointSize: 18)

        button.configuration = configure
        
        return button
    }()
    
    let settingButton: UIButton = {
        let button = UIButton()
        var configure = UIButton.Configuration.plain()
        configure.image = UIImage(systemName: "gear.circle")
        configure.baseForegroundColor = .white
        configure.preferredSymbolConfigurationForImage = UIImage.SymbolConfiguration(pointSize: 18)

        button.configuration = configure
        
        return button
    }()
    
    //MARK: Profile
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "윤희똥")
        imageView.layer.cornerRadius = 36
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleToFill
        
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "희철"
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.textColor = .white
        
        return label
    }()
    
    let messageLabel: UILabel = {
        let label = UILabel()
        label.text = "상태메세지"
        label.font = .systemFont(ofSize: 14, weight: .light)
        label.textColor = .white
        
        return label
    }()

    //MARK: lineView
    
    let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray5
        
        return view
    }()
    
    //MARK: BottomButton
    
    let myChatButton: UIButton = {
        let button = UIButton()
        var configuration = UIButton.Configuration.plain()
        configuration.image = UIImage(systemName: "message.fill")
        configuration.baseForegroundColor = .white
        configuration.title = "나와의 채팅"
        configuration.attributedTitle?.font = .systemFont(ofSize: 12)
        configuration.imagePlacement = .top
        configuration.imagePadding = 20
        button.configuration = configuration
        
        return button
    }()
    
    let editButton: UIButton = {
        let button = UIButton()
        var configuration = UIButton.Configuration.plain()
        configuration.image = UIImage(systemName: "pencil")
        configuration.baseForegroundColor = .white
        configuration.title = "프로필 편집"
        configuration.attributedTitle?.font = .systemFont(ofSize: 12)
        configuration.imagePlacement = .top
        configuration.imagePadding = 20
        button.configuration = configuration
        
        return button
    }()
    
    let storyButton: UIButton = {
        let button = UIButton()
        var configuration = UIButton.Configuration.plain()
        configuration.image = UIImage(systemName: "quote.closing")
        configuration.baseForegroundColor = .white
        configuration.title = "카카오스토리"
        configuration.attributedTitle?.font = .systemFont(ofSize: 12)
        configuration.imagePlacement = .top
        configuration.imagePadding = 20
        button.configuration = configuration
        
        return button
    }()
    
    var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 20
        
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .lightGray
        
        [closeButton, giftButton, qrCodeButton, settingButton, profileImageView, nameLabel, messageLabel, lineView, myChatButton, editButton, storyButton, stackView].forEach {
            view.addSubview($0)
        }
        
        setUpTop()
        
        setUpProfile()
        
        setUpStackView()
    }
    
    func setUpTop() {
        closeButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(16)
            make.leading.equalTo(12)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        
        settingButton.snp.makeConstraints { make in
            make.top.equalTo(closeButton)
            make.trailing.equalTo(-12)
            make.width.equalTo(32)
            make.height.equalTo(32)
        }
        
        qrCodeButton.snp.makeConstraints { make in
            make.top.equalTo(closeButton)
            make.trailing.equalTo(settingButton.snp.leading).offset(-8)
            make.width.equalTo(32)
            make.height.equalTo(32)
        }
        
        giftButton.snp.makeConstraints { make in
            make.top.equalTo(closeButton)
            make.trailing.equalTo(qrCodeButton.snp.leading).offset(-8)
            make.width.equalTo(32)
            make.height.equalTo(32)
        }
    }
    
    func setUpProfile() {
        profileImageView.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.width.equalTo(88)
            make.height.equalTo(88)
            //make.centerY.equalTo(view).offset(80)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.centerX.equalTo(profileImageView)
            make.top.equalTo(profileImageView.snp.bottom).offset(8)
        }
        
        messageLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(16)
            make.centerX.equalTo(profileImageView)
        }
        
        lineView.snp.makeConstraints { make in
            make.top.equalTo(messageLabel.snp.bottom).offset(40)
            make.width.equalTo(view.frame.size.width)
            make.height.equalTo(1)
        }
    }
    
    func setUpStackView() {
        stackView.addArrangedSubview(myChatButton)
        stackView.addArrangedSubview(editButton)
        stackView.addArrangedSubview(storyButton)
        stackView.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.width.equalTo(view.frame.size.width * 0.8)
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-40)
            make.top.equalTo(lineView.snp.bottom).offset(20)
        }
    }
}
