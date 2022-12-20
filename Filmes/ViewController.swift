//
//  ViewController.swift
//  Filmes
//
//  Created by Kaue Ludovico on 20/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblTitleFilm: UILabel!
    private let viewModel = FilmViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func findFilm(_ sender: Any) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            self.viewModel.getFilms { films in
                self.setText(with: films)
            }
        }
        
    }
    
    func setText(with films: [Films]) {
        for i in films {
            lblTitleFilm.text = i.title
        }
    }
}

