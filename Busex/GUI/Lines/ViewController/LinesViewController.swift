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
        let input = LinesViewModel.Input(searchedText: lView.topSearchBar.rx.text.orEmpty.asDriver())
        
        let output = viewModel.transform(input: input)
        output.lines.asObservable().bind(to: lView.LinesTableView.rx.items(cellIdentifier: "LinesViewCell")){
            index,lines,cell in
            cell.textLabel?.text = lines.lineName
            cell.detailTextLabel?.text = "\(lines.stops.count)"
        }.disposed(by: disposeBag)
    }

    
    //MARK: - Additional Setup
    
    private func setupView(){
        title = "Linie"
        lView.LinesTableView.register(UINib(nibName: "LinesViewCell", bundle: nil), forCellReuseIdentifier: "LinesViewCell")
        lView.LinesTableView.delegate = self
    }
    
}
extension LinesViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
