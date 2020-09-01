//
//  CharactersListViewViewModelTests.swift
//  RickAndMortyCharactersAppTests
//
//  Created by Łukasz Bazior on 1/9/20.
//  Copyright © 2020 Łukasz Bazior. All rights reserved.
//

import XCTest
@testable import RickAndMortyCharactersApp

class CharactersListViewViewModelTests: XCTestCase {
    
    func test_fetchCharacters_callsService() {
        let service = CharactersServiceMock()
        let sut = makeSUT(service: service)
        
        XCTAssertEqual(service.fetchCount, 0)
        
        sut.fetchCharacters()
        XCTAssertEqual(service.fetchCount, 1)
    }
    
    func test_fetchedCharacters_areParsedToCellViewModels() {
        let characters = [RMCharacter(name: "A")]
        let service = FakeCharactersService(characters: characters)
        let sut = makeSUT(service: service)
        
        sut.fetchCharacters()
        XCTAssertEqual(sut.cellViewModels, [CellViewModel(text: "A")])
    }
    
    
    // MARK: - Helpers
    
    private func makeSUT(service: CharactersService) -> CharactersListViewViewModel {
        let title = ""
        return CharactersListViewViewModel(title: title, service: service)
    }
    
}
