

import UIKit

class LogInViewController: UIViewController {
    
    private var loginText: String = ""
    private var passwordText: String = ""
    
    private lazy var scrollView: UIScrollView = {
      let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsVerticalScrollIndicator = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.backgroundColor = .white
        return scrollView
    }()
    
    private lazy var contentView: UIView = {
        let contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.backgroundColor = .white
        
        return contentView
    }()
    
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
        loginButton.clipsToBounds = true

        loginButton.setBackgroundImage(UIImage(named: "bluePixel"), for: .normal)
        loginButton.setBackgroundImage(UIImage(named: "bluePixel"), for: .highlighted)
        loginButton.setBackgroundImage(UIImage(named: "bluePixel"), for: .selected)
        loginButton.setBackgroundImage(UIImage(named: "bluePixel"), for: .disabled)
        loginButton.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)
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
    
    lazy var loginTextField: UITextField = {
        let loginTextField = UITextField()
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        loginTextField.placeholder = "Email or phone"
        loginTextField.autocapitalizationType = .none
        return loginTextField
    }()
    
    lazy var passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        return passwordTextField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(contentView)
        view.addSubview(scrollView)
        contentView.addSubview(labelImageView)
        contentView.addSubview(fieldsContainerView)
        contentView.addSubview(containerViewLine)
        fieldsContainerView.addSubview(loginTextField)
        fieldsContainerView.addSubview(passwordTextField)
        contentView.addSubview(loginButton)
        scrollView.addSubview(contentView)
        
        navigationController?.navigationBar.isHidden = true

        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
        labelImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 120),
        labelImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
        labelImageView.heightAnchor.constraint(equalToConstant: 100),
        labelImageView.widthAnchor.constraint(equalToConstant: 100),
        
        fieldsContainerView.heightAnchor.constraint(equalToConstant: 100),
        fieldsContainerView.topAnchor.constraint(equalTo: labelImageView.bottomAnchor, constant: 120),
        fieldsContainerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
        fieldsContainerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
        
        containerViewLine.heightAnchor.constraint(equalToConstant: 1),
        containerViewLine.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
        containerViewLine.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
        containerViewLine.topAnchor.constraint(equalTo: fieldsContainerView.topAnchor, constant: 50),

        loginButton.topAnchor.constraint(equalTo: fieldsContainerView.bottomAnchor, constant: 16),
        loginButton.widthAnchor.constraint(equalTo: fieldsContainerView.widthAnchor),
        loginButton.heightAnchor.constraint(equalToConstant: 50),
        loginButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
        loginButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
        
        loginTextField.topAnchor.constraint(equalTo: fieldsContainerView.topAnchor, constant: 5),
        loginTextField.bottomAnchor.constraint(equalTo: containerViewLine.topAnchor, constant: -5),
        loginTextField.leadingAnchor.constraint(equalTo: fieldsContainerView.leadingAnchor, constant: 15),
        loginTextField.trailingAnchor.constraint(equalTo: fieldsContainerView.trailingAnchor, constant: -15),
        
        passwordTextField.topAnchor.constraint(equalTo: containerViewLine.bottomAnchor, constant: 5),
        passwordTextField.bottomAnchor.constraint(equalTo: fieldsContainerView.bottomAnchor, constant: -5),
        passwordTextField.leadingAnchor.constraint(equalTo: fieldsContainerView.leadingAnchor, constant: 15),
        passwordTextField.trailingAnchor.constraint(equalTo: fieldsContainerView.trailingAnchor, constant: -15),
        
        scrollView.topAnchor.constraint(equalTo: view.topAnchor),
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        scrollView.heightAnchor.constraint(equalTo: view.heightAnchor),
        
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
        contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
        contentView.bottomAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 20)
])
    }
    
    @objc func loginButtonPressed() {
        let profileViewController = ProfileViewController()
        navigationController?.pushViewController(profileViewController, animated: true)
    }
}
