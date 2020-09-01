//
//  CharactersListViewViewModel.swift
//  RickAndMortyCharactersApp
//
//  Created by Łukasz Bazior on 26/8/20.
//  Copyright © 2020 Łukasz Bazior. All rights reserved.
//

class CharactersListViewViewModel {
    
    let title: String
    let cellViewModels: [CellViewModel]
    let service: CharactersService
    
    init(title: String, cellViewModels: [CellViewModel] = [], service: CharactersService) {
        self.title = title
        self.cellViewModels = cellViewModels
        self.service = service
    }
    
    func fetchCharacters() {
        service.fetch { newCharacters in
            
        }
    }
    
}

struct CellViewModel {
    
    let text: String?
    
}
