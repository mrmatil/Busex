//
//  LineHoursViewController.swift
//  Busex
//
//  Created by Mateusz Łukasiński on 18/05/2020.
//  Copyright © 2020 AIB. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class LineHoursViewController: CustomViewController<LineHoursViewModel> {
    
    private let lView = LineHoursView()
    public var selectedModel:LinesModel!
    var stops:[String] = []
    //MARK: - View Controller Lifecycle


    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        view = lView
        view.backgroundColor = .white
        setupView()
    }
    
    override func bindViewModel() {
        
        let input = LineHoursViewModel.Input(allStops: selectedModel,
                                             pickedStop: lView.textBox.rx.text.orEmpty.asDriver(),
                                             pickedDay: lView.segmentedControl.rx.selectedSegmentIndex.asDriver())
        
        let output = viewModel.transform(input: input)
        
        ///Binding data to Table View
        output.hours.asObservable().bind(to: lView.tableView.rx.items(cellIdentifier: "LineHourTableViewCell")){
            index,time,cell in
            let x = cell as! LineHourTableViewCell
            x.hourOutlet.text = "\(time.hour):\(time.minutes)".getFullHour()
        }.disposed(by: disposeBag)

        
        output.stops.asObservable().bind(to: lView.pickerView.rx.itemTitles){
             _, item in
            print(item)
            return "\(item.stopName)"
        }.disposed(by: disposeBag)
        
        ///Binding data to picker view with stops
        lView.pickerView.rx.itemSelected.asObservable().subscribe(onNext: {
            item in
            self.lView.textBox.text = self.stops[item.row]
            }).disposed(by: disposeBag)
        
        }
    
    
    //MARK: - Additional Setup

    private func setupView(){
        title = "Linia"
        lView.titleLabel.text = selectedModel.lineName
        lView.tableView.register(UINib(nibName: "LineHourTableViewCell", bundle: nil), forCellReuseIdentifier: "LineHourTableViewCell")
        stops = selectedModel.flatMap {
            $0.stops.map{
                $0.stopName
            }
        }!
        lView.textBox.text = stops[0]
    }
}
