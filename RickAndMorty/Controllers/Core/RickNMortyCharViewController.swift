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
        
        let request =  RickNMortyRequest(endpoint : .character, queryParameters: [
            URLQueryItem(name:"name", value: "rick"),
            URLQueryItem(name:"status", value: "alive")
            ]
                                                                                  
        )
        print(request.url)
        
        RickNMortyService.shared.execute(request,
                                         expecting: RickNMortyCharacter.self){result in
            }
        
    }
    

}
