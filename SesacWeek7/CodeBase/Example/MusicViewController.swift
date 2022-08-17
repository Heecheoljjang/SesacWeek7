//
//  MusicViewController.swift
//  SesacWeek7
//
//  Created by HeecheolYoon on 2022/08/18.
//

import UIKit
import SnapKit

class MusicViewController: UIViewController {

    //MARK: - Title
    let noteImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "music.note.list")
        imageView.tintColor = .white
        
        return imageView
    }()
    
    let musicTitle: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "strawberry moon"
        titleLabel.textColor = .white
        titleLabel.font = .systemFont(ofSize: 18, weight: .semibold)
        
        return titleLabel
    }()
    
    let downButton: UIButton = {
        let button = UIButton()
        var configuration = UIButton.Configuration.plain()
        configuration.image = UIImage(systemName: "chevron.down")
        configuration.baseForegroundColor = .white
        button.configuration = configuration
        
        return button
    }()
    
    let artist: UILabel = {
        let label = UILabel()
        label.text = "아이유"
        label.textColor = .gray
        label.font = .systemFont(ofSize: 13, weight: .light)
        
        return label
    }()
    
    let infoButton: UIButton = {
        let button = UIButton()
        var configuration = UIButton.Configuration.plain()
        configuration.image = UIImage(systemName: "line.3.horizontal")
        configuration.baseForegroundColor = .white
        button.configuration = configuration
        
        return button
    }()
    
    //MARK: - Main
    let albumImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .lightGray
        imageView.layer.cornerRadius = 5
        
        return imageView
    }()
    
    let heartButton: UIButton = {
        let button = UIButton()
        var configuration = UIButton.Configuration.plain()
        configuration.image = UIImage(systemName: "heart")
        configuration.baseForegroundColor = .lightGray
        button.configuration = configuration
        
        return button
    }()
    
    let likeLabel: UILabel = {
        let label = UILabel()
        label.text = "123,123"
        label.textColor = .lightGray
        label.font = .systemFont(ofSize: 12, weight: .light)
        
        return label
    }()
        
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        
        addViews()
        
        setUpTitle()
        
    }

    func addViews() {
        [noteImageView, musicTitle, downButton, artist, infoButton, albumImageView, heartButton, likeLabel].forEach {
            view.addSubview($0)
        }
    }
    
    func setUpTitle() {
        
        musicTitle.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(12)
        }
        
        noteImageView.snp.makeConstraints { make in
            make.trailing.equalTo(musicTitle.snp.leading).offset(-8)
            make.centerY.equalTo(musicTitle)
            make.height.equalTo(16)
            make.width.equalTo(16)
        }
        
        downButton.snp.makeConstraints { make in
            make.centerY.equalTo(musicTitle)
            make.trailing.equalTo(view).offset(-8)
            make.size.equalTo(noteImageView)
        }
        
        artist.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(musicTitle.snp.bottom).offset(8)
        }
        
        infoButton.snp.makeConstraints { make in
            make.centerX.equalTo(downButton)
            make.top.equalTo(downButton.snp.bottom).offset(12)
        }
    }
}
