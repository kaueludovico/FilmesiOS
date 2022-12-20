//
//  FilmViewModel.swift
//  Filmes
//
//  Created by Kaue Ludovico on 20/12/22.
//

import Foundation

class FilmViewModel {
    
    var repository = FilmRepository()
    
    func getFilms(completion: @escaping ([Films]) -> ()) {
        repository.getFilmes { films in
            completion(films)
        }
    }
}
