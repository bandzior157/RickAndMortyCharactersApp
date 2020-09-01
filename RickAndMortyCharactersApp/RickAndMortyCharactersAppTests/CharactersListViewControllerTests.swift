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
    
    func test_title_didSetByViewModel() {
        let viewModel = CharactersListViewViewModel(title: "t")
        let sut = makeSUT(viewModel)
        XCTAssertEqual(sut.title, "t")
    }
    
    func test_backgroundColor_didSetAsSystemBackground() {
        XCTAssertEqual(makeSUT().view.backgroundColor, .systemBackground)
    }
    
    private func makeSUT(_ viewModel: CharactersListViewViewModel = CharactersListViewViewModel.dummy) -> CharactersListViewController {
        let sut = CharactersListViewController(viewModel: viewModel)
        sut.loadViewIfNeeded()
        return sut
    }
    
}
