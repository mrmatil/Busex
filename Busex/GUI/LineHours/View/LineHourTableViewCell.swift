//
//  LineHourTableViewCell.swift
//  Busex
//
//  Created by Mateusz Łukasiński on 02/06/2020.
//  Copyright © 2020 AIB. All rights reserved.
//

import UIKit

class LineHourTableViewCell: UITableViewCell {
    
    @IBOutlet weak var innerView: UIView!
    @IBOutlet weak var DepartureLabel: UILabel!
    @IBOutlet weak var hourOutlet: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        innerView.layer.cornerRadius = 8.0
        innerView.clipsToBounds = true
        innerView.backgroundColor = .red
        innerView.dropShadow()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
