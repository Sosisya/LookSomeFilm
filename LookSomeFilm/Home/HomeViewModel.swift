//
//  HomeViewModel.swift
//  LookSomeFilm
//
//  Created by Луиза Самойленко on 19.11.2023.
//

import Foundation

protocol HomeViewProtocol {
    func getData()
}

class HomeViewModel: HomeViewProtocol {

    var nowPlaying: NowPlaying?

    func getData() {
        ApiManager.shared.getNowPlayingMovies { [weak self] data in
            self?.nowPlaying = data
            print(data)
        }
    }
}
