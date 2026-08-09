//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Anton Kruglov on 06.08.2026.
//

import Foundation
import UIKit

class ProfileHeaderView: UIView {
    
    private var statusText: String = ""

    lazy var avatar: UIImageView = {
        let avatar = UIImageView()
        avatar.layer.cornerRadius = 50
        avatar.layer.masksToBounds = true
        avatar.layer.borderWidth = 3
        avatar.layer.borderColor = UIColor.white.cgColor
        avatar.image = UIImage(named: "avatar")
        return avatar
    }()

    lazy var nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.text = "Hipster Shadowheart"
        nameLabel.textColor = .black
        nameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        return nameLabel
    }()
    
    lazy var statusLabel: UILabel = {
        let statusLabel = UILabel()
        statusLabel.text = "Waiting for something..."
        statusLabel.textColor = .gray
        statusLabel.font = UIFont.systemFont(ofSize: 14)
        return statusLabel
    }()
    
    

    lazy var statusButton: UIButton = {
        let statusButton = UIButton()
        statusButton.setTitle("Set status", for: .normal)
        statusButton.setTitleColor(.white, for: .normal)
        statusButton.backgroundColor = .systemBlue
        statusButton.layer.cornerRadius = 4
        statusButton.layer.shadowColor = UIColor.black.cgColor
        statusButton.layer.shadowRadius = 4
        statusButton.layer.shadowOffset = .init(width: 4, height: 4)
        statusButton.layer.shadowOpacity = 0.7
        
        statusButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)

        return statusButton
    }()
    
    lazy var statusTextField: UITextField = {
        let statusTextField = UITextField()
        statusTextField.layer.borderColor = UIColor.black.cgColor
        statusTextField.layer.cornerRadius = 12
        statusTextField.layer.borderWidth = 1
        statusTextField.backgroundColor = .white
        statusTextField.placeholder = "Tell us how you're feeling today"
        statusTextField.textColor = .black
        statusTextField.font = UIFont.systemFont(ofSize: 15)
        
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: 40))
            statusTextField.leftView = paddingView
            statusTextField.leftViewMode = .always
        
        statusTextField.addTarget(self, action: #selector(statusTextChanged(_ :)), for: .editingChanged)

        
        return statusTextField
    }()
    
    override init (frame: CGRect) {
        super.init(frame: frame)
        addSubview(avatar)
        addSubview(nameLabel)
        addSubview(statusLabel)
        addSubview(statusButton)
        addSubview(statusTextField)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        avatar.frame = CGRect(x: 16, y: 16, width: 100, height: 100)
        
        nameLabel.frame = CGRect(
            x: avatar.frame.maxX + 16,
            y: 27,
            width: bounds.width - avatar.frame.maxX - 16 - 16,
            height: 22
        )
        
        statusLabel.frame = CGRect(
            x: nameLabel.frame.minX,
            y: nameLabel.frame.maxY + 6,
            width: nameLabel.frame.width,
            height: 20
        )
        
        statusTextField.frame = CGRect(
            x: nameLabel.frame.minX,
            y: statusLabel.frame.maxY + 8,
            width: nameLabel.frame.width,
            height: 40
        )
        
        statusButton.frame = CGRect(
            x: 16,
            y: statusTextField.frame.maxY + 16,
            width: bounds.width - 32,
            height: 50
        )
    }
    
    @objc func buttonPressed() {
        statusLabel.text = statusText
        print(statusText)
    }
    
    @objc func statusTextChanged(_ textField: UITextField) {
        statusText = textField.text ?? ""
    }
    
}
