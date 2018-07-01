//
//  ViewModel.swift
//  MVVM-3
//
//  Created by Ivan Nikitin on 28/06/2018.
//  Copyright © 2018 Иван Никитин. All rights reserved.
//

import Foundation

class ViewModel: NSObject {
    
    @IBOutlet weak var networkManager: NetworkManager!
    private var movies: [String]?
    func fetchMovies(completion: @escaping() -> ()) {
        networkManager.fetchmovies{ [weak self] movies in
            self?.movies = movies
            completion()
        }
    }
    
    func numberOfRowsInSection() -> Int {
        return movies?.count ?? 0
    }
    
    func titleForcell(atIndexPath indexPath: IndexPath) -> String {
        guard let movies = movies else { return ""}
        return movies[indexPath.row]
    }
}
