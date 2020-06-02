//
//  RootViewModel.swift
//  PillsProject
//
//  Created by Mateusz Łukasiński on 19/04/2020.
//  Copyright © 2020 Mateusz Łukasiński. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa



class LinesViewModel:CustomViewModel{
    
    
    struct Input {
        let searchedText: Driver<String>
        let dependencyContainer: DependencyContainer
    }
    
    struct Output {
        let lines: Driver<[LinesModel]>
    }
    
    func transform(input: Input) -> Output {
        
        var lines = getLines(text: input.searchedText.asObservable())
//        getDataFromWeb(dependencyContainer: input.dependencyContainer)
        
        return Output(lines: lines.asDriverOnErrorJustComplete())
    }
    
}

//MARK: - Private functions
private extension LinesViewModel{
    
    func getLines(text:Observable<String>)->Observable<[LinesModel]>{
        /* For Testing Purposes Only */
        let data = TestLinesModel()
        /* End Of Testing Data*/
        
        ///It combines two Observable values and then filter array to have only values that line name contains typed Text
        let x:Observable<[LinesModel]> = Observable.combineLatest(Observable.of(data),text)
            .map{
                let tempText = $0.1
                if tempText != ""{
                    let returnValue = $0.0.filter{$0.lineName.contains(tempText)}
                    return returnValue
                } else{
                    return $0.0
                }
                
        }
        
        
        return x
    }
    
//    func getDataFromWeb(dependencyContainer:DependencyContainer){
//        for x in 1...5{
//            dependencyContainer.latochaProvider.rx.request(.stops(lineNumber: x)).subscribe{
//                event in
//                switch event{
//                case .success(let response):
//                    print(try! response.mapString())
//                case .error(let error):
//                    print(error)
//                }
//            }
//        }
//    }
//
//    func getDataFromRealm(){
//
//    }
}
