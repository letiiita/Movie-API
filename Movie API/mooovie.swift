//
//  mooovie.swift
//  Movie API
//
//  Created by Leticia Rios on 11/28/23.
//

import Foundation

struct MovieResponse: Decodable {
    
    let results: [Movie]
}

struct Movie: Decodable {
    
    let id: Int
    let title: String
    let backpic: String?
    let poster: String?
    let overview: String
    let voteavg: Double
    let votecnt: Int
    let time: Int? 
}
