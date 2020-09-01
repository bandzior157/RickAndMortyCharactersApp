//
//  FakeCharactersService.swift
//  RickAndMortyCharactersAppTests
//
//  Created by Łukasz Bazior on 1/9/20.
//  Copyright © 2020 Łukasz Bazior. All rights reserved.
//

@testable import RickAndMortyCharactersApp

class FakeCharactersService: CharactersService {
    
    private let characters: [RMCharacter]
    
    init(characters: [RMCharacter] = []) {
        self.characters = characters
    }
    
    func fetch(completion: @escaping ([RMCharacter]) -> ()) {
        completion(characters)
    }
    
}
