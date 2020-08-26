//
//  CharactersListViewController.swift
//  RickAndMortyCharactersApp
//
//  Created by Łukasz Bazior on 26/8/20.
//  Copyright © 2020 Łukasz Bazior. All rights reserved.
//

import UIKit

class CharactersListViewController: UIViewController {
    
    private let viewModel: CharactersListViewViewModel
    
    init(viewModel: CharactersListViewViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = viewModel.title
    }
    
}
