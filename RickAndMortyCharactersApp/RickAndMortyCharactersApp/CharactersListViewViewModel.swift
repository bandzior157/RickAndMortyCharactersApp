//
//  CharactersListViewViewModel.swift
//  RickAndMortyCharactersApp
//
//  Created by Łukasz Bazior on 26/8/20.
//  Copyright © 2020 Łukasz Bazior. All rights reserved.
//

class CharactersListViewViewModel {
    
    let title: String
    let cellViewModels: [Int]
    
    init(title: String, cellViewModels: [Int] = []) {
        self.title = title
        self.cellViewModels = cellViewModels
    }
    
    func fetchCharacters() {
        
    }
    
}
