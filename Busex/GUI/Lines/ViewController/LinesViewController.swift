//
//  RootViewController.swift
//  PillsProject
//
//  Created by Mateusz Łukasiński on 19/04/2020.
//  Copyright © 2020 Mateusz Łukasiński. All rights reserved.
//

import UIKit

final class LinesViewController: CustomViewController<LinesViewModel> {

    let lView = LinesView()
    //MARK: - View Controller Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    override func loadView() {
        view = lView
    }
    
    override func bindViewModel() {
        let input = LinesViewModel.Input(searchedText: lView.topSearchBar.rx.text.orEmpty.asDriver())
        
        let output = viewModel.transform(input: input)
        output.lines
    }

    
    //MARK: - Additional Setup
    
    private func setupView(){
        title = "Linie"
    }
}
