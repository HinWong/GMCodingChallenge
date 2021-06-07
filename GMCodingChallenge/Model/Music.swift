//
//  Music.swift
//  GMCodingChallenge
//
//  Created by Hin Wong on 6/4/21.
//

import Foundation

// MARK: - Welcome
struct MusicResponse: Codable {
    let resultCount: Int
    let results: [Music]
}

// MARK: - Result
struct Music: Codable {
//    let wrapperType: WrapperType
//    let kind: Kind?
    let artistID, trackID: Int?
    let artistName: String
    let trackName, trackCensoredName: String?
    let artistViewURL, trackViewURL: String?
    let previewURL: String?
    let artworkUrl30: String?
    let artworkUrl60, artworkUrl100: String
    let collectionPrice, trackPrice, collectionHDPrice, trackHDPrice: Double?
    let releaseDate: Date
    //let collectionExplicitness: Explicitness
    //let trackExplicitness: Explicitness?
    let trackTimeMillis: Int?
    //let country: Country
    //let currency: Currency
    let primaryGenreName: String
    //let contentAdvisoryRating: ContentAdvisoryRating?
    let shortDescription, longDescription: String?
    let collectionID: Int?
    let collectionName, collectionCensoredName: String?
    let collectionViewURL, feedURL: String?
    let trackRentalPrice, trackHDRentalPrice, trackCount: Int?
    let artworkUrl600: String?
    let genreIDS, genres: [String]?
    let discCount, discNumber, trackNumber: Int?
    let isStreamable: Bool?
    let collectionArtistID: Int?
    let collectionArtistName: String?
    let collectionArtistViewURL: String?
    let copyright, resultDescription: String?

    enum CodingKeys: String, CodingKey {
        //case wrapperType, kind
        case artistID = "artistId"
        case trackID = "trackId"
        case artistName, trackName, trackCensoredName
        case artistViewURL = "artistViewUrl"
        case trackViewURL = "trackViewUrl"
        case previewURL = "previewUrl"
        case artworkUrl30, artworkUrl60, artworkUrl100, collectionPrice, trackPrice
        case collectionHDPrice = "collectionHdPrice"
        case trackHDPrice = "trackHdPrice"
        case releaseDate, trackTimeMillis, primaryGenreName, shortDescription, longDescription
        case collectionID = "collectionId"
        case collectionName, collectionCensoredName
        case collectionViewURL = "collectionViewUrl"
        case feedURL = "feedUrl"
        case trackRentalPrice
        case trackHDRentalPrice = "trackHdRentalPrice"
        case trackCount, artworkUrl600
        case genreIDS = "genreIds"
        case genres, discCount, discNumber, trackNumber, isStreamable
        case collectionArtistID = "collectionArtistId"
        case collectionArtistName
        case collectionArtistViewURL = "collectionArtistViewUrl"
        case copyright
        case resultDescription = "description"
    }
}

//enum Explicitness: String, Codable {
//    case cleaned = "cleaned"
//    case explicit = "explicit"
//    case notExplicit = "notExplicit"
//}

//enum ContentAdvisoryRating: String, Codable {
//    case clean = "Clean"
//    case explicit = "Explicit"
//    case nr = "NR"
//}

//enum Country: String, Codable {
//    case usa = "USA"
//}

//enum Currency: String, Codable {
//    case usd = "USD"
//}

//enum Kind: String, Codable {
//    case featureMovie = "feature-movie"
//    case podcast = "podcast"
//    case song = "song"
//}
//
//enum WrapperType: String, Codable {
//    case audiobook = "audiobook"
//    case track = "track"
//}
