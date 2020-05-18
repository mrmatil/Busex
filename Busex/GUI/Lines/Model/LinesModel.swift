//
//  LinesModel.swift
//  Busex
//
//  Created by Mateusz Łukasiński on 18/05/2020.
//  Copyright © 2020 AIB. All rights reserved.
//

import Foundation
import RxSwift

struct LinesModel {
    var lineName: String
    var lineNumber: Int
    var stops: [LinesStops]
}

struct LinesStops {
    var stopName:String
    var stopNumber:Int
    var mondayFriday : [LinesTime]
    var saturdays : [LinesTime]
    var sundays : [LinesTime]
}

struct LinesTime{
    var hour:Int
    var minutes:Int
}
