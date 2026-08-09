//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Anton Kruglov on 06.08.2026.
//

import Foundation
import UIKit

class ProfileHeaderView: UIView {
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
        nameLabel.text = "Hipster cat"
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
        statusButton.setTitle("Show status", for: .normal)
        statusButton.setTitleColor(.white, for: .normal)
        statusButton.backgroundColor = .systemBlue
        statusButton.layer.cornerRadius = 4
        statusButton.layer.shadowColor = UIColor.black.cgColor
        statusButton.layer.shadowRadius = 4
        statusButton.layer.shadowOffset = .init(width: 4, height: 4)
        statusButton.layer.shadowOpacity = 0.7
        return statusButton
    }()
    
    override init (frame: CGRect) {
        super.init(frame: frame)
        addSubview(avatar)
        addSubview(nameLabel)
        addSubview(statusLabel)
        addSubview(statusButton)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        avatar.frame = CGRect(x: 16, y: 16, width: 120, height: 120)
        
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
            height: 22
            )
        
        
        statusButton.frame = CGRect(
            x:16,
            y: statusLabel.frame.maxY + 34,
            width: bounds.width - 32,
            height: 50
            )
    }
    
}
