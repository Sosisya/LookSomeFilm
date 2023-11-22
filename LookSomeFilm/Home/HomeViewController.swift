//
//  Home2ViewController.swift
//  LookSomeFilm
//
//  Created by Луиза Самойленко on 20.11.2023.
//

import UIKit




class HomeViewController: UICollectionViewController {

    enum Section: Int, CaseIterable {
        case nowPlaying
        case popular
        case topRaited
        case upcoming
    }

    var homeViewModel: HomeViewModel
    let layout = UICollectionViewFlowLayout()



    init(homeViewModel: HomeViewModel) {
        self.homeViewModel = homeViewModel
        super.init(collectionViewLayout: layout)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        layout.scrollDirection = .horizontal
        collectionView.register(GenreCollectionViewCell.self, forCellWithReuseIdentifier: "GenreCollectionViewCell")
    }

    // MARK: UICollectionViewDataSource
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return Section.allCases.count
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch Section(rawValue: section) {
        case .nowPlaying:
            return 3
        case .popular:
            return 5
        case .topRaited:
            return 4
        case .upcoming:
            return 6
        default:
            fatalError()
        }
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch Section(rawValue: indexPath.section) {
        case .nowPlaying:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GenreCollectionViewCell", for: indexPath) as! GenreCollectionViewCell
            return cell
        case .popular:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GenreCollectionViewCell", for: indexPath) as! GenreCollectionViewCell
            return cell
        case .topRaited:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GenreCollectionViewCell", for: indexPath) as! GenreCollectionViewCell
            return cell
        case .upcoming:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GenreCollectionViewCell", for: indexPath) as! GenreCollectionViewCell
            return cell
        default:
            fatalError()
        }
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 50)
    }
}
