//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Anton Kruglov on 31.07.2026.
//

import UIKit

class ProfileViewController: UIViewController {
    let profileHeaderView = ProfileHeaderView()

    fileprivate let posts = FeedPost.make()

    private lazy var tableView: UITableView = {
        let tableView = UITableView(
            frame: .zero,
            style: .plain
        )

        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground

        addSubviews()
        setupConstraints()
        tuneTableView()
    }

    private func setupConstraints() {
        let safeAreaGuide = view.safeAreaLayoutGuide

        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: safeAreaGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: safeAreaGuide.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: safeAreaGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: safeAreaGuide.trailingAnchor),
        ])
    }
    
    private func tuneTableView() {
        
        let headerView = ProfileHeaderView()
        tableView.tableHeaderView = headerView
        tableView.tableFooterView = UIView()
        
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: "Base cell")
        tableView.delegate = self
        tableView.dataSource = self
    }

    private func addSubviews() {
        view.addSubview(tableView)
    }
}

extension ProfileViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        posts.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: "Base cell",
                for: indexPath
            ) as? PostTableViewCell else {
                fatalError("could not dequeueReusableCell")
            }
            return cell
    }
}


extension ProfileViewController: UITableViewDelegate {}

// class ProfileViewController: UIViewController {
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
// }
