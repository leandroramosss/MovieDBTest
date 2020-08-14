//
//  MovieDetailViewController.swift
//  MovieTest
//
//  Created by Leandro Ramos on 8/13/20.
//  Copyright © 2020 Black Beard Games. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController, Storyboarded {
    
    let customCell = UINib(nibName: "MovieCustomCell", bundle: nil)
        
    @IBOutlet weak var collectionView: UICollectionView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpLayout()
        self.collectionView.register(UINib(nibName: "MovieCustomCell", bundle: nil), forCellWithReuseIdentifier: "cell")
    }
    
}

extension MovieDetailViewController: ViewCodeProtocol, UICollectionViewDelegate, UICollectionViewDataSource {
        
    func setUpLayout() {
        setUpConstraints()
        setUpNavigation()
        delegation()
    }
        
    func setUpConstraints() {
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
    }
    
    func delegation() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func setUpNavigation() {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1000
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MovieCustomCell
        return cell
    }
    
}
