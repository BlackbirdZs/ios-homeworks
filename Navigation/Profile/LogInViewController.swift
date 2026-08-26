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
         labelImageView.layer.cornerRadius = 50
         labelImageView.layer.masksToBounds = true
         labelImageView.layer.borderWidth = 3
         labelImageView.layer.borderColor = UIColor.white.cgColor
         labelImageView.image = UIImage(named: "VKLogo")

        return labelImageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(labelImageView)
      
        
        
        /*
         // Only override draw() if you perform custom drawing.
         // An empty implementation adversely affects performance during animation.
         override func draw(_ rect: CGRect) {
         // Drawing code
         }
         */
        
    }
}
