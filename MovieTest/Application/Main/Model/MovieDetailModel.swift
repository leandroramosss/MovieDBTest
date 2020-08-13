//
//  MovieDetailModel.swift
//  MovieTest
//
//  Created by Leandro Ramos on 8/13/20.
//  Copyright © 2020 Black Beard Games. All rights reserved.
//

import Foundation

struct MovieData: Codable {
    let originalTitle: String
    let voteCount: Int
    let popularity: Int
    
    enum CodingKeys: String, CodingKey {
        case originalTitle = "original_title"
        case voteCount = "vote_count"
        case popularity
    }
}
