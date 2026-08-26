

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
        loginButton.layer.cornerRadius = 10
        loginButton.backgroundColor = .VK
        return loginButton
    }()
    
    lazy var fieldsContainerView: UIView = {
       let fieldsContainerView = UIView()
        fieldsContainerView.translatesAutoresizingMaskIntoConstraints = false
        fieldsContainerView.backgroundColor = .systemGray6
        fieldsContainerView.layer.borderColor = UIColor.lightGray.cgColor
        fieldsContainerView.layer.borderWidth = 0.5
        fieldsContainerView.layer.cornerRadius = 10
        fieldsContainerView.clipsToBounds = true
        return fieldsContainerView
    }()
    
    
    lazy var containerViewLine: UIView = {
        let containerViewLine = UIView()
        containerViewLine.translatesAutoresizingMaskIntoConstraints = false
        containerViewLine.backgroundColor = .systemGray4
        return containerViewLine
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(labelImageView)
        view.addSubview(fieldsContainerView)
        view.addSubview(containerViewLine)
        view.addSubview(loginButton)
    
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
        labelImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
        labelImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        labelImageView.heightAnchor.constraint(equalToConstant: 100),
        labelImageView.widthAnchor.constraint(equalToConstant: 100),
        
        fieldsContainerView.heightAnchor.constraint(equalToConstant: 100),
        fieldsContainerView.widthAnchor.constraint(equalToConstant: 100),
        fieldsContainerView.topAnchor.constraint(equalTo: labelImageView.bottomAnchor, constant: 120),
        fieldsContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
        fieldsContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
        
        containerViewLine.heightAnchor.constraint(equalToConstant: 1),
        containerViewLine.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
        containerViewLine.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
        containerViewLine.topAnchor.constraint(equalTo: fieldsContainerView.topAnchor, constant: 25),
        containerViewLine.bottomAnchor.constraint(equalTo: fieldsContainerView.bottomAnchor, constant: -25),
        
        loginButton.topAnchor.constraint(equalTo: fieldsContainerView.bottomAnchor, constant: 16),
        loginButton.widthAnchor.constraint(equalTo: fieldsContainerView.widthAnchor),
        loginButton.heightAnchor.constraint(equalToConstant: 50),
        loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
        loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
])
    }
}
