//
//  UITableViewCell+SetByCellViewModel.swift
//  RickAndMortyCharactersApp
//
//  Created by Łukasz Bazior on 1/9/20.
//  Copyright © 2020 Łukasz Bazior. All rights reserved.
//

import UIKit

extension UITableViewCell {
    
    func set(by cellViewModel: CellViewModel) {
        textLabel?.text = cellViewModel.text
    }
    
}
