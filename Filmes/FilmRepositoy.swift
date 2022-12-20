//
//  FilmRepositoy.swift
//  Filmes
//
//  Created by Kaue Ludovico on 20/12/22.
//

import Foundation

class FilmRepository {
    func getFilmes(completion: @escaping ([Films]) -> ()) {
        completion([
            Films(id: 0, title: "Django Livre"),
            Films(id: 1, title: "V de Vingança"),
            Films(id: 2, title: "Bastardos Inglórios"),
            Films(id: 3, title: "Straight Outta Comptom")
        ])
    }
}
