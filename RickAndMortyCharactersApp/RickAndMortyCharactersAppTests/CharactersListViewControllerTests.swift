//
//  CharactersListViewControllerTests.swift
//  RickAndMortyCharactersAppTests
//
//  Created by Łukasz Bazior on 26/8/20.
//  Copyright © 2020 Łukasz Bazior. All rights reserved.
//

import XCTest
@testable import RickAndMortyCharactersApp

class CharactersListViewControllerTests: XCTestCase {
    
    func test_title_didSetByViewModel_onLoad() {
        let viewModel = makeViewModel("t")
        let sut = makeSUT(viewModel)
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.title, "t")
    }
    
    func test_backgroundColor_didSetAsSystemBackground() {
        XCTAssertEqual(makeSUT().view.backgroundColor, .systemBackground)
    }
    
    func test_fetchCharacters_onLoad() {
        let viewModel = CharactersListViewViewModelSpy(title: "", service: CharactersServiceDummy())
        let sut = makeSUT(viewModel)
        
        XCTAssertEqual(viewModel.fetchCharactersCounter, 0)
        
        sut.loadViewIfNeeded()
        XCTAssertEqual(viewModel.fetchCharactersCounter, 1)
    }
    
    func test_tableViewRowsCount_equalsViewModelCellViewModelsCount() {
        let viewModel = makeViewModel("")
        let sut = makeSUT(viewModel)
        let rows = sut.tableView.numberOfRows(inSection: 0)
        XCTAssertEqual(rows, viewModel.cellViewModels.count)
    }
    
    func test_cellDisplayTextFromCellViewModel() {
        let characters = [RMCharacter(name: "B"), RMCharacter(name: "A")]
        let service = FakeCharactersService(characters: characters)
        let viewModel = makeViewModel("", service)
        let sut = makeSUT(viewModel)
        
        let cell = sut.tableView(sut.tableView, cellForRowAt: IndexPath(row: 0, section: 0))
        XCTAssertNotNil(cell)
        XCTAssertEqual(cell.textLabel?.text, "B")
        
        let cell2 = sut.tableView(sut.tableView, cellForRowAt: IndexPath(row: 1, section: 0))
        XCTAssertNotNil(cell2)
        XCTAssertEqual(cell2.textLabel?.text, "A")
    }
    
    
    // MARK: - Helpers
    
    private func makeSUT(_ viewModel: CharactersListViewViewModel = CharactersListViewViewModel.dummy) -> CharactersListViewController {
        return CharactersListViewController(viewModel: viewModel)
    }
    
    private func makeViewModel(_ title: String, _ service: CharactersService = CharactersServiceDummy()) -> CharactersListViewViewModel {
        CharactersListViewViewModel(title: title, service: service)
    }
    
}

class CharactersListViewViewModelSpy: CharactersListViewViewModel {
    
    private(set) var fetchCharactersCounter = 0
    
    override func fetchCharacters() {
        fetchCharactersCounter += 1
    }
    
}
