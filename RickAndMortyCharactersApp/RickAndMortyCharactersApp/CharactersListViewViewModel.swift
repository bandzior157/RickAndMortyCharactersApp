//
//  CharactersListViewViewModel.swift
//  RickAndMortyCharactersApp
//
//  Created by Łukasz Bazior on 26/8/20.
//  Copyright © 2020 Łukasz Bazior. All rights reserved.
//

class CharactersListViewViewModel {
    
    let title: String
    private(set) var cellViewModels = [CellViewModel]()
    let service: CharactersService
    
    init(title: String, service: CharactersService) {
        self.title = title
        self.service = service
    }
    
    func fetchCharacters() {
        service.fetch { [weak self] newCharacters in
            self?.cellViewModels = newCharacters.map { CellViewModel(text: $0.name) }
        }
    }
    
}

struct CellViewModel {
    
    let text: String?
    
}
