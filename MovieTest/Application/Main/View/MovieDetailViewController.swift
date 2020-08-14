//
//  MovieDetailViewController.swift
//  MovieTest
//
//  Created by Leandro Ramos on 8/13/20.
//  Copyright © 2020 Black Beard Games. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController, Storyboarded {
    
//    let collectionView: UICollectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout.init())
//    let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpLayout()
    }
    
}

extension MovieDetailViewController: ViewCodeProtocol {
    func setUpLayout() {
        addViewsToMainView()
        setUpConstraints()
        setUpNavigation()
    }
    
    func addViewsToMainView() {
//        view.addSubview(collectionView)
    }
    
    func setUpConstraints() {
//        collectionView.translatesAutoresizingMaskIntoConstraints = false
//        collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
//        collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0).isActive = true
//        collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0).isActive = true
//        collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
    }
    
    func setUpNavigation() {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
}
