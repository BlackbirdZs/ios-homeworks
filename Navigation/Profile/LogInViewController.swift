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
    
    lazy var loginButton: UIButton = {
        let loginButton = UIButton()
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.setTitle("Log in", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.backgroundColor = .VK
        
        return loginButton
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(labelImageView)
        view.addSubview(loginButton)
    
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
        labelImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
        labelImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        labelImageView.heightAnchor.constraint(equalToConstant: 100),
        labelImageView.widthAnchor.constraint(equalToConstant: 100),
        
        loginButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 400),
        loginButton.heightAnchor.constraint(equalToConstant: 50),
        loginButton.widthAnchor.constraint(equalToConstant: 100),
        loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
  
])
    }
}
