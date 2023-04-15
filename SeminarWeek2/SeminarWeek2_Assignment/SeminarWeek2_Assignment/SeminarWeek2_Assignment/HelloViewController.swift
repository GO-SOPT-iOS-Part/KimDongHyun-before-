//
//  HelloViewController.swift
//  SeminarWeek2_Assignment
//
//  Created by 김동현 on 2023/04/12.
//

import UIKit

class HelloViewController: UIViewController {
    
    var email: String = "abc"
    
    private lazy var welcomeimageView: UIImageView = {
        let welcomeImageView = UIImageView()
        welcomeImageView.backgroundColor = .black
        welcomeImageView.image = UIImage(named: "image 3")
        welcomeImageView.translatesAutoresizingMaskIntoConstraints = false
        return welcomeImageView
    }()
    
    private lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "\(email)님\n반가워요!"
        label.textAlignment = .center
        label.font = UIFont(name:"ArialRoundedMTBold", size: 23)
        label.textColor = UIColor(named: "gray1")
        return label
    }()
    
    private lazy var gomainButton: UIButton = {
        let button = UIButton()
        button.setTitle("메인으로", for: .normal)
        button.backgroundColor = UIColor(named: "red")
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.titleLabel?.textColor = UIColor .white
        button.titleLabel?.textAlignment = .center
        button.layer.cornerRadius = 3
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setstyle()
        setlayout()
        
        
    }
    
}






extension HelloViewController {
    private func setstyle() {
        view.backgroundColor = .black
    }
    private func setlayout() {
        view.addSubview(welcomeimageView)
        view.addSubview(welcomeLabel)
        view.addSubview(gomainButton)
        
        
        welcomeimageView.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(58)
            make.leading.equalToSuperview().inset(0)
            make.trailing.equalToSuperview().inset(0)
            make.width.equalTo(375)
            make.height.equalTo(210.94)
        }
        
        welcomeLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(336)
            make.leading.equalToSuperview().inset(75)
            make.trailing.equalToSuperview().inset(74)
            make.width.equalTo(226)
            make.height.equalTo(74)
        }
        
        gomainButton.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(694)
            make.leading.equalToSuperview().inset(20)
            make.trailing.equalToSuperview().inset(20)
            make.width.equalTo(335)
            make.height.equalTo(52)
        }
    }
}
