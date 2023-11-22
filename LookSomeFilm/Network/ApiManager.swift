//
//  ApiManager.swift
//  LookSomeFilm
//
//  Created by Луиза Самойленко on 17.11.2023.
//

import Foundation
import Alamofire

class ApiManager {
    static let shared = ApiManager()

    func getNowPlayingMovies(completionHandler: @escaping (_ data: NowPlaying) -> Void) {
        let url = "https://api.themoviedb.org/3/movie/now_playing?api_key=c7ead67bdd4b4fbb6b19fee66be8c9dd"

        AF.request(url).response { response in
            switch response.result {
            case .success(let data):
                do {
                    guard let data = data else { return }
                    let jsonData =  try JSONDecoder().decode(NowPlaying.self, from: data)
                    completionHandler(jsonData)
                } catch {
                    print(error.localizedDescription)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }

    func getPopularMovies(completionHandler: @escaping (_ data: Popular) -> Void) {
        let url = "https://api.themoviedb.org/3/movie/popular?api_key=c7ead67bdd4b4fbb6b19fee66be8c9dd"

        AF.request(url).response { response in
            switch response.result {
            case .success(let data):
                do {
                    guard let data = data else { return }
                    let jsonData =  try JSONDecoder().decode(Popular.self, from: data)
                    completionHandler(jsonData)
                } catch {
                    print(error.localizedDescription)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }

    func getTopRatedMovies(completionHandler: @escaping (_ data: TopRated) -> Void) {
        let url = "https://api.themoviedb.org/3/movie/top_rated?api_key=c7ead67bdd4b4fbb6b19fee66be8c9dd"

        AF.request(url).response { response in
            switch response.result {
            case .success(let data):
                do {
                    guard let data = data else { return }
                    let jsonData =  try JSONDecoder().decode(TopRated.self, from: data)
                    completionHandler(jsonData)
                } catch {
                    print(error.localizedDescription)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }

    func getUpcomingMovies(completionHandler: @escaping (_ data: Upcoming) -> Void) {
        let url = "https://api.themoviedb.org/3/movie/upcoming?api_key=c7ead67bdd4b4fbb6b19fee66be8c9dd"

        AF.request(url).response { response in
            switch response.result {
            case .success(let data):
                do {
                    guard let data = data else { return }
                    let jsonData =  try JSONDecoder().decode(Upcoming.self, from: data)
                    completionHandler(jsonData)
                } catch {
                    print(error.localizedDescription)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }

    func getGenres(completionHandler: @escaping (_ data: Genres) -> Void) {
        let url = "https://api.themoviedb.org/3/genre/movie/list?api_key=c7ead67bdd4b4fbb6b19fee66be8c9dd"

        AF.request(url).response { response in
            switch response.result {
            case .success(let data):
                do {
                    guard let data = data else { return }
                    let jsonData =  try JSONDecoder().decode(Genres.self, from: data)
                    completionHandler(jsonData)
                } catch {
                    print(error.localizedDescription)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }

    func getMovieDetails(id: Int, completionHandler: @escaping (_ data: MovieDetails) -> Void) {
        let url = "https://api.themoviedb.org/3/movie/\(id)?api_key=c7ead67bdd4b4fbb6b19fee66be8c9dd"

        AF.request(url).response { response in
            switch response.result {
            case .success(let data):
                do {
                    guard let data = data else { return }
                    let jsonData =  try JSONDecoder().decode(MovieDetails.self, from: data)
                    completionHandler(jsonData)
                } catch {
                    print(error.localizedDescription)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }

    func getCastAndCrew(id: Int, completionHandler: @escaping (_ data: CastAndCrew) -> Void) {
        let url = "https://api.themoviedb.org/3/movie/\(id)/credits?api_key=c7ead67bdd4b4fbb6b19fee66be8c9dd"

        AF.request(url).response { response in
            switch response.result {
            case .success(let data):
                do {
                    guard let data = data else { return }
                    let jsonData =  try JSONDecoder().decode(CastAndCrew.self, from: data)
                    completionHandler(jsonData)
                } catch {
                    print(error.localizedDescription)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
