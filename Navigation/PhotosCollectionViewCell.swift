//
//  PhotosCollectionViewCell.swift
//  Navigation
//
//  Created by Anton Kruglov on 04.09.2026.
//

import Foundation
import UIKit

class PhotosCollectionViewCell: UICollectionViewCell {
    
    private lazy var collectionImage: UIImageView = {
        let collectionImage = UIImageView(frame: .zero)
        collectionImage.translatesAutoresizingMaskIntoConstraints = false
        collectionImage.contentMode = .scaleAspectFill
        
        return collectionImage
    }()
}
