//
//  sources.swift
//  Movie API
//
//  Created by Leticia Rios on 11/28/23.
//

import Foundation


protocol MovieService {
    
    func fetchMovies(from endpoint: MovieListEndpoint, completion: @escaping (Result<MovieResponse, MovieError>) -> ())
    func fetchMovie(id: Int, completion: @escaping (Result<Movie, MovieError>) -> ())
    func searchMovie(query: String, completion: @escaping (Result<MovieResponse, MovieError>)->())
}


enum MovieListEndpoint: String, CaseIterable{
case nowPlaying = "now_playing"
case upcoming
case topRated = "top_rated"
case popular
    
    var description: String {
        switch self {
        case .nowPlaying: return "Now Playing"
        case .upcoming: return "Upcoming"
        case .topRated: return "Top Rated"
        case .popular: return "Popular"
        }
    }
}

enum MovieError: Error, CustomNSError{
    
    case apiError
    case invalidEndpoint
    case invalidResponse
    case noData
    case serializationError
    
    var localizedDescription: String {
        switch self {
        case .apiError: return "Failed to get data"
        case .invalidEndpoint: return "invalid Endpoint"
        case .invalidResponse: return "Invalid Response"
        case .noData: return"No data"
        case .serializationError: return "failed to decode data"
        }
    }
    
    var errorUserInfo: [String : Any] {
        [NSLocalizedDescriptionKey: localizedDescription]
    }
}
