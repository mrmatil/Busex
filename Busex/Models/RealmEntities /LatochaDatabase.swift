//
//  LatochaDatabase.swift
//  Busex
//
//  Created by Mateusz Łukasiński on 05/05/2020.
//  Copyright © 2020 AIB. All rights reserved.
//
import Foundation
import RealmSwift

class RealmDatabase: Object{
    @objc dynamic var lineName:String = ""
    @objc dynamic var lineNumber:String = ""
    @objc dynamic var lineStopName:String = ""
    var MonFri = List<String>()
    var Saturday = List<String>()
    var Sunday = List<String>()
}
