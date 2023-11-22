//
//  GenresViewModel.swift
//  LookSomeFilm
//
//  Created by Луиза Самойленко on 19.11.2023.
//

import Foundation

protocol GenresProtocol {
    func getGenres()
}

class GenresViewModel: GenresProtocol {
    var genres: Genres?

    func getGenres() {
        ApiManager.shared.getGenres { [weak self] data in
            self?.genres = data
            print(data)
        }
    }
}
