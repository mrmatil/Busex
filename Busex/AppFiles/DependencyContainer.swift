//
//  DependencyContainer.swift
//  PillsProject
//
//  Created by Mateusz Łukasiński on 19/04/2020.
//  Copyright © 2020 Mateusz Łukasiński. All rights reserved.
//

import Foundation
import RxSwift
import RxRealm
import Moya

class DependencyContainer{
    
    let realm = RealmDatabase()
    
    
    //MARK: - Moya Providers
    let latochaProvider = MoyaProvider<LatochaMoya>()
}
