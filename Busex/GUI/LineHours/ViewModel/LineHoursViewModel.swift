//
//  LineHoursViewModel.swift
//  Busex
//
//  Created by Mateusz Łukasiński on 18/05/2020.
//  Copyright © 2020 AIB. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

enum pickedDay{
    case monfri
    case sat
    case sun
}

class LineHoursViewModel:CustomViewModel{
    
    
    struct Input{
        let allStops:LinesModel
        let pickedStop: Driver<String>
        let pickedDay: Driver<Int>
    }
    
    struct Output{
        let hours: Driver<[LinesTime]>
        let stops: Driver<[LinesStops]>
    }
    
    func transform(input: Input) -> Output {
        
        let x = input.pickedDay.map{a -> pickedDay in
            switch a{
            case 0:
                return pickedDay.monfri
            case 1:
                return pickedDay.sat
            case 2:
                return pickedDay.sun
            default:
                return pickedDay.monfri
            }
        }.asDriver()
        
        let stops = Driver.of(input.allStops.stops)
        
        return Output(hours: getCorrectTime(allStops: input.allStops, pickedStop: input.pickedStop, pickedDay: x ).asDriverOnErrorJustComplete(), stops: stops)
    }
}

//MARK: - Private functions

private extension LineHoursViewModel{
    
    func getCorrectTime(allStops:LinesModel, pickedStop:Driver<String>, pickedDay: Driver<pickedDay>)->Observable<[LinesTime]>{
        
        ///getting correct data for picked stop and day
        let correctTime:Observable<[LinesTime]> = Observable.combineLatest(Observable.of(allStops), pickedStop.asObservable(),pickedDay.asObservable()).map{
            let pickedStop = $0.1
            let pickedDay = $0.2
            
            let x =  $0.0.stops.filter{
                $0.stopName == pickedStop
            }
            
            print(x)
            
            switch pickedDay{
            case .monfri:
                return x.flatMap{
                    return $0.mondayFriday
                }
            case .sat:
                return x.flatMap{
                    return $0.saturdays
                }
            case .sun:
                return x.flatMap{
                    return $0.sundays
                }
            }
        }
        
        return correctTime
    }
}

