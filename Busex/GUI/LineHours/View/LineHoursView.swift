//
//  LineHoursView.swift
//  Busex
//
//  Created by Mateusz Łukasiński on 18/05/2020.
//  Copyright © 2020 AIB. All rights reserved.
//

import UIKit
import TinyConstraints

class LineHoursView:CustomView{
    
    
    override init() {
        super.init()
        setTopViews()
    }
    
    //MARK: - View Elements:

    var titleLabel:UILabel = {
        let label = UILabel()
        label.textColor = .blue
        label.text = "Your Name Here or smth"
        label.textAlignment = .center
        return label
    }()
    
    var pickerView:UIPickerView = {
        let pickerView = UIPickerView()
        
        return pickerView
    }()
    
    
    var textBox:UITextField = {
        let textBox = UITextField()
        textBox.borderStyle = .roundedRect
        return textBox
    }()
    
    var segmentedControl:UISegmentedControl = {
        let items = ["Pon-Pt","Sob","Ndz"]
        let segmentedControl = UISegmentedControl(items: items)
        segmentedControl.selectedSegmentIndex = 0
        return segmentedControl
    }()
    
    var tableView:UITableView = {
       let tableView = UITableView()
        
        return tableView
    }()
    
    
    //MARK: - Set Elements:
    
    func setTopViews(){
        addSubview(titleLabel)
        titleLabel.topToSuperview(offset: 15.0, usingSafeArea: true)
        titleLabel.leftToSuperview()
        titleLabel.rightToSuperview()
        titleLabel.height(15.0)
        
        addSubview(textBox)
        textBox.topToBottom(of: titleLabel, offset: 15.0)
        textBox.leftToSuperview(offset: 30.0)
        textBox.rightToSuperview(offset: -30.0)
        textBox.height(35.0)
        
        textBox.inputView = pickerView
        
        addSubview(segmentedControl)
        segmentedControl.topToBottom(of: textBox, offset: 15.0)
        segmentedControl.horizontalToSuperview(insets: TinyEdgeInsets(top: 0, left: 30.0, bottom: 0, right: 30.0))
        segmentedControl.height(35.0)
        
        addSubview(tableView)
        tableView.topToBottom(of: segmentedControl, offset: 20.0)
        tableView.leftToSuperview()
        tableView.rightToSuperview()
        tableView.height(800.0)

    }
}
