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
        let viewModel = CharactersListViewViewModel(title: "t")
        let sut = makeSUT(viewModel)
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.title, "t")
    }
    
    func test_backgroundColor_didSetAsSystemBackground() {
        XCTAssertEqual(makeSUT().view.backgroundColor, .systemBackground)
    }
    
    func test_fetchCharacters_onLoad() {
        let viewModel = CharactersListViewViewModelSpy(title: "")
        let sut = makeSUT(viewModel)
        
        XCTAssertEqual(viewModel.fetchCharactersCounter, 0)
        
        sut.loadViewIfNeeded()
        XCTAssertEqual(viewModel.fetchCharactersCounter, 1)
    }
    
    func test_tableViewRowsCount_equalsViewModelCellViewModelsCount() {
        let viewModel = CharactersListViewViewModel(title: "", cellViewModels: [1, 2])
        let sut = makeSUT(viewModel)
        let rows = sut.tableView.numberOfRows(inSection: 0)
        XCTAssertEqual(rows, viewModel.cellViewModels.count)
    }
    
    private func makeSUT(_ viewModel: CharactersListViewViewModel = CharactersListViewViewModel.dummy) -> CharactersListViewController {
        return CharactersListViewController(viewModel: viewModel)
    }
    
}

class CharactersListViewViewModelSpy: CharactersListViewViewModel {
    
    private(set) var fetchCharactersCounter = 0
    
    override func fetchCharacters() {
        fetchCharactersCounter += 1
    }
    
}
