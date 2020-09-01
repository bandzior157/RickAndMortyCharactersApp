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
    
    init(title: String, cellViewModels: [CellViewModel] = []) {
        self.title = title
        self.cellViewModels = cellViewModels
    }
    
    func fetchCharacters() {
        
    }
    
}

struct CellViewModel {
    
    let text: String?
    
}
