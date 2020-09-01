//
//  CharactersListViewViewModel+Dummy.swift
//  RickAndMortyCharactersAppTests
//
//  Created by Łukasz Bazior on 1/9/20.
//  Copyright © 2020 Łukasz Bazior. All rights reserved.
//

@testable import RickAndMortyCharactersApp

extension CharactersListViewViewModel {
    
    static var dummy: CharactersListViewViewModel {
        CharactersListViewViewModel(title: "a")
    }
    
}
