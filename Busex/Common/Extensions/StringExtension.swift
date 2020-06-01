//
//  StringExtension.swift
//  Busex
//
//  Created by Mateusz Łukasiński on 02/06/2020.
//  Copyright © 2020 AIB. All rights reserved.
//

import Foundation

extension String{
    
    func getFullHour()->String{
        var x = self.split(separator: ":")
        
        if(x.count==2){
            if(x[1].count == 1){
                var temp = x[1]
                temp += "0"
                x[1] = "\(temp)"
            }
        }
        
        return "\(x[0]) : \(x[1])"
    }
}
