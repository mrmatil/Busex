//
//  LatochaMoya.swift
//  Busex
//
//  Created by Mateusz Łukasiński on 18/05/2020.
//  Copyright © 2020 AIB. All rights reserved.
//

import Foundation
import Moya

public enum LatochaMoya{
    case stops(lineNumber:Int)
    case hours(lineNumber:Int, stopNumber:Int)
}

extension LatochaMoya: TargetType{
    public var baseURL: URL {
        switch self {
        case .hours:
            return URL(string: "http://latocha.pl/Ajax/Rozklad")!
        case .stops:
            return URL(string: "http://latocha.pl/Ajax/Rozklad")!
        }
    }
    
    public var path: String {
        switch self {
        case let .hours(lineNumber,stopNumber):
            return "/\(lineNumber)/\(stopNumber)"
            
        case let .stops(lineNumber):
            return "/\(lineNumber)"
        }
    }
    
    public var method: Moya.Method {
        switch self {
        case .hours:
            return .get
        case .stops:
            return .get
        }
    }
    
    public var sampleData: Data {
        switch self {
        case .hours:
            return Data()
        case .stops:
            return Data()
        }
    }
    
    public var task: Task {
        switch self {
        case .hours:
            return .requestPlain
        case .stops:
            return .requestPlain
        }
    }
    
    public var headers: [String : String]? {
        switch self {
        case .hours:
            return .none
        case .stops:
            return .none
        }
    }
    

}
