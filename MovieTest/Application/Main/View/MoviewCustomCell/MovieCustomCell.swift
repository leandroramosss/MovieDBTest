//
//  MovieCustomCell.swift
//  MovieTest
//
//  Created by Leandro Ramos on 8/13/20.
//  Copyright © 2020 Black Beard Games. All rights reserved.
//

import UIKit

class MovieCustomCell: UICollectionViewCell, ViewCodeProtocol {

    override func awakeFromNib() {
        super.awakeFromNib()
        setUpLayout()
    }
    
    func setUpLayout() {
        setUpConstraints()
    }
    
    func setUpConstraints() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
    }

}
