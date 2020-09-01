//
//  CellViewModel+Equatable.swift
//  RickAndMortyCharactersAppTests
//
//  Created by Łukasz Bazior on 1/9/20.
//  Copyright © 2020 Łukasz Bazior. All rights reserved.
//

@testable import RickAndMortyCharactersApp

extension CellViewModel: Equatable {
    static public func ==(lhs: CellViewModel, rhs: CellViewModel) -> Bool {
        lhs.text == rhs.text
    }
}
