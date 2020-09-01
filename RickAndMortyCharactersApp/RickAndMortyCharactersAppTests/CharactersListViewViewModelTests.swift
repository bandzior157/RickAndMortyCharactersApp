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
    
    
    // MARK: - Helpers
    
    private func makeSUT(service: CharactersService) -> CharactersListViewViewModel {
        let title = ""
        let cellViewModels = [CellViewModel(text: nil)]
        return CharactersListViewViewModel(title: title, cellViewModels: cellViewModels, service: service)
    }
    
}

class CharactersServiceMock: CharactersService {
    
    private(set) var fetchCount = 0
    
    func fetch(completion: @escaping ([Character]) -> ()) {
        fetchCount += 1
    }
    
}
