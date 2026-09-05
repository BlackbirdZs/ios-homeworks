//
//  PhotosViewController.swift
//  Navigation
//
//  Created by Anton Kruglov on 03.09.2026.
//

import Foundation
import UIKit

class PhotosViewController: UIViewController {
    
    private let collectionView: UICollectionView = {
        let viewLayout = UICollectionViewLayout()
        
        let collectionView = UICollectionView(
            frame: .zero,
            collectionViewLayout: viewLayout
        )
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .systemBackground
        
        collectionView.register(PhotosTableViewCell.self, forCellWithReuseIdentifier: "PhotosTableViewCell")
        
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //сюда методы готовые
    }
    
    func setupView() {
        view.backgroundColor = .systemBackground
        
    }
    
    func setupCollectionView() {
        view.addSubview(collectionView)
        
        //сюда делегаты
    }
 
    private func setupLayouts() {
        let safeAreaGuide = view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: safeAreaGuide.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: safeAreaGuide.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: safeAreaGuide.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: safeAreaGuide.trailingAnchor),
        ])
    }
    
    
    
    
    
}
