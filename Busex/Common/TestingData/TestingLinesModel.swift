//
//  TestingLinesModel.swift
//  Busex
//
//  Created by Mateusz Łukasiński on 18/05/2020.
//  Copyright © 2020 AIB. All rights reserved.
//

import Foundation
import RxSwift

func TestLinesModel()->[LinesModel]{
    let line1 = LinesModel(lineName: "Gdańsk -> Tczew",
                           lineNumber: 1,
                           stops: [LinesStops(stopName: "Gdańsk",
                                              stopNumber: 1,
                                              mondayFriday: [LinesTime(hour: 12,
                                                                       minutes: 00),
                                                             LinesTime(hour: 13,
                                                                       minutes: 45)],
                                              saturdays: [LinesTime(hour: 13,
                                                                    minutes: 00),
                                                          LinesTime(hour: 14,
                                                                    minutes: 45)],
                                              sundays: [LinesTime(hour: 15,
                                                                  minutes: 00),
                                                        LinesTime(hour: 15,
                                                                  minutes: 45)]),
                                   LinesStops(stopName: "Tczew",
                                              stopNumber: 2,
                                              mondayFriday: [LinesTime(hour: 12,
                                                                       minutes: 45),
                                                             LinesTime(hour: 14,
                                                                       minutes: 30)],
                                              saturdays: [LinesTime(hour: 13,
                                                                    minutes: 45),
                                                          LinesTime(hour: 15,
                                                                    minutes: 30)],
                                              sundays: [LinesTime(hour: 14,
                                                                  minutes: 45),
                                                        LinesTime(hour: 16,
                                                                  minutes: 30)])])
    let line2 = LinesModel(lineName: "Tczew -> Gdańsk",
                           lineNumber: 1,
                           stops: [LinesStops(stopName: "Tczew",
                                              stopNumber: 1,
                                              mondayFriday: [LinesTime(hour: 12,
                                                                       minutes: 00),
                                                             LinesTime(hour: 13,
                                                                       minutes: 45)],
                                              saturdays: [LinesTime(hour: 13,
                                                                    minutes: 00),
                                                          LinesTime(hour: 14,
                                                                    minutes: 45)],
                                              sundays: [LinesTime(hour: 15,
                                                                  minutes: 00),
                                                        LinesTime(hour: 15,
                                                                  minutes: 45)]),
                                   LinesStops(stopName: "Gdańsk",
                                              stopNumber: 2,
                                              mondayFriday: [LinesTime(hour: 12,
                                                                       minutes: 45),
                                                             LinesTime(hour: 14,
                                                                       minutes: 30)],
                                              saturdays: [LinesTime(hour: 13,
                                                                    minutes: 45),
                                                          LinesTime(hour: 15,
                                                                    minutes: 30)],
                                              sundays: [LinesTime(hour: 14,
                                                                  minutes: 45),
                                                        LinesTime(hour: 16,
                                                                  minutes: 30)])])
    
    return [line1,line2]
}