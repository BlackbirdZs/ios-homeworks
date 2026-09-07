//
//  PhotosViewController.swift
//  Navigation
//
//  Created by Anton Kruglov on 03.09.2026.
//

import Foundation
import UIKit

class PhotosViewController: UIViewController {
    
    private let photosCollectionView: UICollectionView = {
        let viewLayout = UICollectionViewFlowLayout()
        
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
        
        setupView()
        setupCollectionView()
        setupLayouts()
    }
    
    func setupView() {
        view.backgroundColor = .systemBackground
        
    }
    
    func setupCollectionView() {
        view.addSubview(photosCollectionView)
        
        //сюда делегаты
    }
 
    private func setupLayouts() {
        let safeAreaGuide = view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            photosCollectionView.topAnchor.constraint(equalTo: safeAreaGuide.topAnchor),
            photosCollectionView.bottomAnchor.constraint(equalTo: safeAreaGuide.bottomAnchor),
            photosCollectionView.leadingAnchor.constraint(equalTo: safeAreaGuide.leadingAnchor),
            photosCollectionView.trailingAnchor.constraint(equalTo: safeAreaGuide.trailingAnchor),
        ])
    }
    
    //+ delegates
    
    
}
