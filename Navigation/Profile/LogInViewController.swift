//
//  ogInViewController.swift
//  Navigation
//
//  Created by Anton Kruglov on 26.08.2026.
//

import UIKit

class LogInViewController: UIViewController {
    
    private var loginText: String = ""
    private var passwordText: String = ""
    
     lazy var labelImageView: UIImageView = {
        let labelImageView = UIImageView()
         labelImageView.translatesAutoresizingMaskIntoConstraints = false
         labelImageView.image = UIImage(named: "VKLogo")
        return labelImageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(labelImageView)
    
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
        labelImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
        labelImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        labelImageView.heightAnchor.constraint(equalToConstant: 100),
        labelImageView.widthAnchor.constraint(equalToConstant: 100),
])
    }

}
