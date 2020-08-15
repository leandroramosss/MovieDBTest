//
//  MovieDetailsFirstSectionTableViewCell.swift
//  MovieTest
//
//  Created by Leandro Ramos on 8/15/20.
//  Copyright © 2020 Black Beard Games. All rights reserved.
//

import UIKit
import SnapKit

class MovieDetailsFirstSectionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var likesLabel: UILabel!
    @IBOutlet weak var heartButton: UIButton!
    @IBOutlet weak var heartIconImage: UIImageView!
    @IBOutlet weak var viewsLabel: UILabel!
    @IBOutlet weak var viewImageIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func heartButtonPressed(_ sender: Any) {
        
    }
    
}
