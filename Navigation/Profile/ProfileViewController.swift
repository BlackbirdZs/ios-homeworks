//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Anton Kruglov on 31.07.2026.
//

import UIKit

//class ProfileViewController: UIViewController {
//    let profileHeaderView = ProfileHeaderView()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//

//        view.backgroundColor = .lightGray
//        view.addSubview(profileHeaderView)
//        view.addSubview(newButton)
//
//        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//            profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//            profileHeaderView.heightAnchor.constraint(equalToConstant: 220),
//
//            newButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            newButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            newButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
//            newButton.heightAnchor.constraint(equalToConstant: 50),
//        ])
//    }
//
//    private lazy var newButton: UIButton = {
//        let newButton = UIButton()
//        newButton.translatesAutoresizingMaskIntoConstraints = false
//        newButton.setTitle("Some new button", for: .normal)
//        newButton.backgroundColor = .gray
//        return newButton
//    }()
//
//}


class ProfileViewController: UIViewController {
    let profileHeaderView = ProfileHeaderView()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView.init(
            frame: .zero,
            style: .plain
        )
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        
        tableView.delegate = self
        tableView.dataSource = self
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.widthAnchor.constraint(equalTo: view.widthAnchor),
        ])
    }
    
    private func addSubviews() {
        view.addSubview(tableView)
    }
    
}
    
extension ProfileViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
}

extension ProfileViewController: UITableViewDelegate {}
        


