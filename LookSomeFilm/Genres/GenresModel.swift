//
//  GenresModel.swift
//  LookSomeFilm
//
//  Created by Луиза Самойленко on 19.11.2023.
//

import Foundation

// MARK: - Genres
struct Genres: Codable {
    let genres: [Genre]?
}

// MARK: - Genre
struct Genre: Codable {
    let id: Int?
    let name: String?
}
