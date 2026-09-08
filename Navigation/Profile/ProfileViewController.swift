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
    
    private lazy var newBackgroundView: UIView = {
        let newBackgroundView = UIView()
        newBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        newBackgroundView.backgroundColor = .black
        newBackgroundView.alpha = 0.0
    
        return newBackgroundView
    }()
    
    private lazy var closeButton: UIButton = {
        let closeButton = UIButton()
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        closeButton.setImage(UIImage(named: "xmark"), for: .normal)
        closeButton.tintColor = .white
        closeButton.alpha = 0.0
        closeButton.addTarget(self, action: <#T##Selector#>, for: .touchUpInside)
        
        return closeButton
    }()
    
    private lazy var avatarImageView: UIImageView = {
        let avatarImageView = UIImageView()
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        avatarImageView.image = profileHeaderView.avatarImageView.image
        avatarImageView.alpha = 0.0
        avatarImageView.clipsToBounds = true
        avatarImageView.isHidden = true
        
        return avatarImageView
    }()
    
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

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    private func setupConstraints() {
        let safeAreaGuide = view.safeAreaLayoutGuide

        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: safeAreaGuide.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: safeAreaGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: safeAreaGuide.trailingAnchor),
        ])
    }

    private func tuneTableView() {
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 100
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: "Base cell")
        tableView.register(PhotosTableViewCell.self, forCellReuseIdentifier: "Photos cell")
        tableView.delegate = self
        tableView.dataSource = self
    }

    private func addSubviews() {
        view.addSubview(tableView)
    }
}

extension ProfileViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 1 {
            return posts.count
        } else {
            return 1
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 1 {
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: "Base cell",
                for: indexPath
            ) as? PostTableViewCell else {
                fatalError("could not dequeueReusableCell")
            }
            let post = posts[indexPath.row]
            cell.configure(with: post)
            return cell
        } else {
            guard let photosCell = tableView.dequeueReusableCell(withIdentifier: "Photos cell", for: indexPath
            ) as? PhotosTableViewCell else {
                fatalError("could not dequeueReusableCell")
            }
            return photosCell
        }
    }
}

extension ProfileViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            return profileHeaderView
        } else {
            return nil
        }
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 220
        } else {
            return 0
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            let photosViewController = PhotosViewController()
            navigationController?.pushViewController(photosViewController, animated: true)
        }
    }
}
