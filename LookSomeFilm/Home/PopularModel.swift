//
//  PopularModel.swift
//  LookSomeFilm
//
//  Created by Луиза Самойленко on 19.11.2023.
//

import Foundation

// MARK: - Popular
struct Popular: Codable {
    let page: Int?
    let results: [Result]?
    let totalPages, totalResults: Int?

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}
