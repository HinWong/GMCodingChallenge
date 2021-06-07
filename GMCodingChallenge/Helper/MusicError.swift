//
//  MusicError.swift
//  GMCodingChallenge
//
//  Created by Hin Wong on 6/4/21.
//

import Foundation

enum MusicError: LocalizedError {
    
    // What we see
    case invalidURL
    case thrown(Error)
    case noData
    case unableToDecode
    
    // What the user sees
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "Unable to reach server."
        case .thrown(let error):
            return error.localizedDescription
        case .noData:
            return "Server responded with no data."
        case .unableToDecode:
            return "Server responded with bad data."
        }
    }
}
