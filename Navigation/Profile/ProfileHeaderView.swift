//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Anton Kruglov on 06.08.2026.
//

import UIKit
import Foundation

class ProfileHeaderView: UIView {
   
    lazy var avatar : UIImageView = {
        let avatar = UIImageView()
        avatar.layer.cornerRadius = 30
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
        nameLabel.font = UIFont.systemFont(ofSize: 18)
            return nameLabel
    }()
    
    
    lazy var statusLabel: UILabel = {
        let statusLabel = UILabel()
        statusLabel.text = "Waiting for something"
        statusLabel.textColor = .black
        statusLabel.font = UIFont.systemFont(ofSize: 12)
        return statusLabel
    }()
    
}
