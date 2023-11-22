//
//  GenresViewControllerCollectionViewController.swift
//  LookSomeFilm
//
//  Created by Луиза Самойленко on 17.11.2023.
//

import UIKit


class GenresViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    let layout: GenreCompositionalLayout
    let genresViewModel: GenresViewModel

    init(layout: GenreCompositionalLayout, genresViewModel: GenresViewModel) {
        self.layout = layout
        self.genresViewModel = genresViewModel
        super.init(collectionViewLayout: layout.createLayout())
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Genres"
        genresViewModel.getGenres()

        collectionView.register(GenreCollectionViewCell.self, forCellWithReuseIdentifier: "GenreCollectionViewCell")

    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GenreCollectionViewCell", for: indexPath) as! GenreCollectionViewCell
        cell.backgroundColor = .red
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 20, height: 20)
    }
}

