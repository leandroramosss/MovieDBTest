//
//  MovieDetailFirstSectionCellModel.swift
//  MovieTest
//
//  Created by Leandro Ramos on 8/16/20.
//  Copyright © 2020 Black Beard Games. All rights reserved.
//

import Foundation

class MovieDetailFirstSectionCellModel {
    
    private let movieInfo: MovieData
    
    init(movieInfo: MovieData) {
        self.movieInfo = movieInfo
    }
    
    var movieTitle: String {
        movieInfo.originalTitle
    }
    
    var movieViews: String {
        String(movieInfo.popularity)
    }
    
    var movieLikes: String {
        String(movieInfo.popularity)
    }
    
}
