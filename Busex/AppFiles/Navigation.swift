//
//  Navigation.swift
//  PillsProject
//
//  Created by Mateusz Łukasiński on 19/04/2020.
//  Copyright © 2020 Mateusz Łukasiński. All rights reserved.
//

import UIKit

/// enum for better navigation purposes -> it's accessible from any controller in App
enum Navigation{
    case linePicker
    case lineHours
}

extension Navigation{
    
    func getViewController(dependencyContainer:DependencyContainer, controller:Navigation)->UIViewController{
        switch controller{
            
        case .linePicker:
            return LinesViewController(dependencyContainer: dependencyContainer, navigation: self, viewModel: LinesViewModel(), view: LinesView())
        case .lineHours:
            return LineHoursViewController(dependencyContainer: dependencyContainer, navigation: self, viewModel: LineHoursViewModel(), view: LineHoursView())
        }
    }
}
