//
//  ViewModel.swift
//  PillsProject
//
//  Created by Mateusz Łukasiński on 19/04/2020.
//  Copyright © 2020 Mateusz Łukasiński. All rights reserved.
//

import Foundation

protocol CustomViewModel{
    
    associatedtype Input
    associatedtype Output
    
    func transform(input:Input)->Output
}
