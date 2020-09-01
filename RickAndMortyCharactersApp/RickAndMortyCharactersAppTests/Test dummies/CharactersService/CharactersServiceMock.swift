//
//  CharactersServiceMock.swift
//  RickAndMortyCharactersAppTests
//
//  Created by Łukasz Bazior on 1/9/20.
//  Copyright © 2020 Łukasz Bazior. All rights reserved.
//

@testable import RickAndMortyCharactersApp

class CharactersServiceMock: CharactersService {
    
    private(set) var fetchCount = 0
    
    func fetch(completion: @escaping ([RMCharacter]) -> ()) {
        fetchCount += 1
    }
    
}
