//
//  RootViewController.swift
//  PillsProject
//
//  Created by Mateusz Łukasiński on 19/04/2020.
//  Copyright © 2020 Mateusz Łukasiński. All rights reserved.
//

import UIKit
import RxSwift

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
        let input = LinesViewModel.Input(searchedText: lView.topSearchBar.rx.text.orEmpty.asDriver(), dependencyContainer: dependencyContainer)
        
        let output = viewModel.transform(input: input)
        output.lines.asObservable().bind(to: lView.LinesTableView.rx.items(cellIdentifier: "LinesViewCell")){
            index,lines,cell in
            cell.textLabel?.text = lines.lineName
            cell.detailTextLabel?.text = "\(lines.stops.count)"
        }.disposed(by: disposeBag)
        
        Observable
            .zip(lView.LinesTableView.rx.itemSelected, lView.LinesTableView.rx.modelSelected(LinesModel.self))
            .bind{
                [unowned self] indexPath, model in
                self.lView.LinesTableView.deselectRow(at: indexPath, animated: true)
                let vc = self.navigation.getViewController(dependencyContainer: self.dependencyContainer, controller: .lineHours) as! LineHoursViewController
                vc.selectedModel = model
                self.navigationController?.pushViewController(vc, animated: true)
            }
            .disposed(by: disposeBag)
    }

    
    //MARK: - Additional Setup
    
    private func setupView(){
        title = "Linie"
        lView.LinesTableView.register(UINib(nibName: "LinesViewCell", bundle: nil), forCellReuseIdentifier: "LinesViewCell")
    }
    
    
}
