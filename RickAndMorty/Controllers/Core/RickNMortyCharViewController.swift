//
//  RickNMortyCharViewController.swift
//  RickAndMorty
//
//  Created by Hafize on 16.10.2023.
//

import UIKit

///Controller to show and search all/any characters
final class RickNMortyCharViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Characters"
        view.backgroundColor = .systemBackground
     
        RickNMortyService.shared.execute(.listCharacterRequests, expecting: String.self){
            switch(result){
            case .success(let model):
                print(String(describing: model))
            case .failure(let error):
                print(String(describing: error))
            }
        }
        
    }
    

}
