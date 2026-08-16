//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Anton Kruglov on 31.07.2026.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let profileHeaderView = ProfileHeaderView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .lightGray
        view.addSubview(profileHeaderView)
        
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileHeaderView.heightAnchor.constraint(equalToConstant: 220),
        ])
    }
}
