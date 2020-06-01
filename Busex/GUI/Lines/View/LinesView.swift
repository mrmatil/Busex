//
//  RootView.swift
//  PillsProject
//
//  Created by Mateusz Łukasiński on 19/04/2020.
//  Copyright © 2020 Mateusz Łukasiński. All rights reserved.
//

import UIKit
import TinyConstraints

class LinesView:CustomView{
    
    override init() {
        super.init()
//        setBackground()
        setTopSearchBar()
        setLinesTableView()
    }
    
    //MARK: - View Elements:
    
    var topSearchBar:UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.keyboardType = .alphabet
        return searchBar
    }()
    
    var LinesTableView:UITableView = {
        let tableView = UITableView()
        tableView.separatorStyle = .none
//        tableView.backgroundColor = .green
        return tableView
    }()
    
    //MARK: - Set Elements:
    
    private func setBackground(){
        backgroundColor = .white
    }
    
    private func setTopSearchBar(){
        self.addSubview(topSearchBar)
        topSearchBar.edgesToSuperview(excluding: .bottom, usingSafeArea: true)
        topSearchBar.height(50.0)
    }
    
    private func setLinesTableView(){
        self.addSubview(LinesTableView)
        LinesTableView.topToBottom(of: topSearchBar)
        LinesTableView.bottomToSuperview()
        LinesTableView.horizontalToSuperview()
    }
    
    
}
