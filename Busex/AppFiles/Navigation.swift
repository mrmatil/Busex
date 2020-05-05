//
//  Navigation.swift
//  PillsProject
//
//  Created by Mateusz Łukasiński on 19/04/2020.
//  Copyright © 2020 Mateusz Łukasiński. All rights reserved.
//

import UIKit

enum Navigation{
    case root
}

extension Navigation{
    
    func getViewController(dependencyContainer:DependencyContainer)->UIViewController{
        switch self{
            
        case .root:
            return RootViewController(dependencyContainer: dependencyContainer, navigation: self, viewModel: RootViewModel(), view: RootView())
        }
    }
}
