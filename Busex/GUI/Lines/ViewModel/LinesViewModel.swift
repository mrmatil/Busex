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
    }
    
    struct Output {
        let lines: Driver<[LinesModel]>
    }
    
    func transform(input: Input) -> Output {
        
        var lines = getLines(text: input.searchedText.asObservable())
        
        return Output(lines: lines.asDriverOnErrorJustComplete())
    }
    
}

//MARK: - Private functions
private extension LinesViewModel{
    
    func getLines(text:Observable<String>)->Observable<[LinesModel]>{
        /* For Testing Purposes Only */
        let data = TestLinesModel()
        /* End Of Testing Data*/
        
        let x:Observable<[LinesModel]> = Observable.combineLatest(Observable.of(data),text)
            .map{
            let tempText = $0.1
            return $0.0.filter{$0.lineName.contains(tempText)}
        }
        
        return x
    }
}
