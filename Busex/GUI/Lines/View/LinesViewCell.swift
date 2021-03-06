//
//  LinesViewCell.swift
//  Busex
//
//  Created by Mateusz Łukasiński on 18/05/2020.
//  Copyright © 2020 AIB. All rights reserved.
//

import UIKit

class LinesViewCell: UITableViewCell {
    
    @IBOutlet weak var innerView: UIView!
    
    @IBOutlet weak var mainText: UILabel!
    
    @IBOutlet weak var minorText: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        innerView.layer.cornerRadius = 8.0
        innerView.clipsToBounds = true
        innerView.backgroundColor = .red
        innerView.dropShadow()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
