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
        let post = posts[indexPath.row]
        cell.configure(with: post)
        return cell
    }
}

extension ProfileViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return profileHeaderView
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 220
    }
}
