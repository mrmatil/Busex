//
//  CustomViewController.swift
//  PillsProject
//
//  Created by Mateusz Łukasiński on 19/04/2020.
//  Copyright © 2020 Mateusz Łukasiński. All rights reserved.
//

import UIKit
import RxSwift

class CustomViewController<ViewModel:CustomViewModel>:UIViewController{
    
    private let disposeBag = DisposeBag()
    let viewModel: ViewModel!
    let customView: CustomView!
    let navigation: Navigation!
    let dependencyContainer:DependencyContainer!
    
    public init(dependencyContainer:DependencyContainer, navigation:Navigation, viewModel:ViewModel, view:CustomView) {
        self.viewModel = viewModel
        self.navigation = navigation
        self.dependencyContainer = dependencyContainer
        self.customView=view
        super.init(nibName: nil, bundle: nil)
    }
    
    public func bindViewModel(){
        fatalError("Bind View Model!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
    }
    
    override func loadView() {
        view = customView
    }
    
    
    
    @available(*, unavailable)
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        viewModel = nil
        navigation = nil
        dependencyContainer = nil
        customView=nil
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    @available(*, unavailable)
    public required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
}
