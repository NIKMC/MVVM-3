//
//  NetworkManager.swift
//  MVVM-3
//
//  Created by Ivan Nikitin on 29/06/2018.
//  Copyright © 2018 Иван Никитин. All rights reserved.
//

import Foundation

class NetworkManager: NSObject {
    func fetchmovies(completion: ([String]) -> ()) {
        completion(["Movie 1","Movie 2","Movie 3"])
    }
}
