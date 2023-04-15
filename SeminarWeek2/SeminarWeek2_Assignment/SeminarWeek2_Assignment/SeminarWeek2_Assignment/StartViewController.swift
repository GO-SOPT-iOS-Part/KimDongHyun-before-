//
//  StartViewController.swift
//  SeminarWeek2_Assignment
//
//  Created by 김동현 on 2023/04/11.
//

import UIKit
import SnapKit

class StartViewController: UIViewController {
    
    private lazy var backButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "btn_before.svg"), for: .normal)
        button.isSelected = true
        return button
    }()
    
    private lazy var idfindButton: UIButton = {
        let button = UIButton()
        button.setTitle("아이디 찾기", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.titleLabel?.textColor = UIColor(named: "gray2")
        button.titleLabel?.textAlignment = .center
        return button
    }()
    
    private lazy var pwfindButton: UIButton = {
        let button = UIButton()
        button.setTitle("비밀번호 찾기", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.titleLabel?.textColor = UIColor(named: "gray2")
        button.titleLabel?.textAlignment = .center
        return button
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("로그인하기", for: .normal)
        button.backgroundColor = .black
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.titleLabel?.textColor = UIColor(named: "gray2")
        button.titleLabel?.textAlignment = .center
        button.layer.cornerRadius = 3
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(named: "gray4")?.cgColor
        return button
    }()
    
    private lazy var nicknameButton: UIButton = {
        let button = UIButton()
        button.setTitle("닉네임 만들러가기", for: .normal)
        button.backgroundColor = .black
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.titleLabel?.textColor = UIColor(named: "gray2")
        button.titleLabel?.textAlignment = .center
        return button
    }()
    
    private lazy var textField1: UITextField = {
        let textField = UITextField()
        textField.textColor = UIColor(named: "gray2")
        textField.backgroundColor = UIColor(named: "gray4")
        textField.layer.cornerRadius = 3
        textField.addPlaceholderPadding()
        textField.attributedPlaceholder = NSAttributedString(
            string: "아이디",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(named: "gray2") ?? .gray]
        )
        return textField
    }()
    
    private lazy var textField2: UITextField = {
        let textField = UITextField()
        textField.textColor = UIColor(named: "gray2")
        textField.backgroundColor = UIColor(named: "gray4")
        textField.layer.cornerRadius = 3
        textField.addPlaceholderPadding()
        textField.attributedPlaceholder = NSAttributedString(
            string: "비밀번호",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(named: "gray2") ?? .gray]
        )
        return textField
    }()
    
    private let loginLabel: UILabel = {
        let label = UILabel()
        label.text = "TVING ID 로그인"
        label.textAlignment = .center
        label.textColor = UIColor(named: "gray1")
        label.font = UIFont(name:"ArialRoundedMTBold", size: 23)
        return label
    }()
    
    private let textLabel: UILabel = {
        let label = UILabel()
        label.text = "아직 계정이 없으신가요?"
        label.textAlignment = .center
        label.font = UIFont(name:"ArialRoundedMTBold", size: 14)
        label.textColor = UIColor(named: "gray3")
        return label
    }()
    
    private let midLabel: UILabel = {
        let label = UILabel()
        label.text = "|"
        label.textAlignment = .center
        label.textColor = UIColor(named: "gray4")
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setstyle()
        setlayout()
    }
}

extension StartViewController {
    private func setstyle() {
        view.backgroundColor = .black
    }
    private func setlayout() {
        view.addSubview(backButton)
        view.addSubview(loginLabel)
        view.addSubview(textField1)
        view.addSubview(textField2)
        view.addSubview(loginButton)
        view.addSubview(idfindButton)
        view.addSubview(pwfindButton)
        view.addSubview(textLabel)
        view.addSubview(nicknameButton)
        view.addSubview(midLabel)
        
        backButton.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(65)
            make.leading.equalToSuperview().inset(24)
            make.trailing.equalToSuperview().inset(343)
        }
        
        loginLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(90)
            make.leading.equalToSuperview().inset(109)
            make.trailing.equalToSuperview().inset(110)
        }
        
        textField1.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(158)
            make.leading.equalToSuperview().inset(20)
            make.trailing.equalToSuperview().inset(20)
            make.width.equalTo(335)
            make.height.equalTo(52)
        }
        
        textField2.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(217)
            make.leading.equalToSuperview().inset(20)
            make.trailing.equalToSuperview().inset(20)
            make.width.equalTo(335)
            make.height.equalTo(52)
        }
        
        loginButton.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(290)
            make.leading.equalToSuperview().inset(20)
            make.trailing.equalToSuperview().inset(20)
            make.width.equalTo(335)
            make.height.equalTo(52)
        }
        
        idfindButton.snp.makeConstraints {make in
            make.top.equalToSuperview().inset(373)
            make.leading.equalToSuperview().inset(85)
            make.trailing.equalToSuperview().inset(228)
            make.width.equalTo(62)
            make.height.equalTo(22)
        }
        
        pwfindButton.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(373)
            make.leading.equalToSuperview().inset(216)
            make.trailing.equalToSuperview().inset(86)
            make.width.equalTo(73)
            make.height.equalTo(22)
        }
        
        textLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(423)
            make.leading.equalToSuperview().inset(51)
            make.trailing.equalToSuperview().inset(195)
            make.width.equalTo(129)
            make.height.equalTo(22)
        }
        
        nicknameButton.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(423)
            make.leading.equalToSuperview().inset(197)
            make.trailing.equalToSuperview().inset(50)
            make.width.equalTo(128)
            make.height.equalTo(22)

        }
        
        midLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(378)
            make.leading.equalToSuperview().inset(180)
            make.trailing.equalToSuperview().inset(195)
            make.width.equalTo(0)
            make.height.equalTo(12)
        }
    }
}

extension UITextField {
    func addPlaceholderPadding() {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 22, height: self.frame.height + 28))
        self.leftView = paddingView
        self.leftViewMode = ViewMode.always
    }

    func applyInputTextFieldStyle(_ textField: UITextField) {
        textField.becomeFirstResponder()
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(named: "gray2")?.cgColor
    }

}

