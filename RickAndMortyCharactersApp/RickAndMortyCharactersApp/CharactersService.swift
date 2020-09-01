//
//  CharactersService.swift
//  RickAndMortyCharactersApp
//
//  Created by Łukasz Bazior on 1/9/20.
//  Copyright © 2020 Łukasz Bazior. All rights reserved.
//

protocol CharactersService {
    func fetch(completion: @escaping ([Character]) -> ())
}

class CharactersServiceDummy: CharactersService {
    func fetch(completion: @escaping ([Character]) -> ()) {}
}
