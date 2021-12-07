//
//  Class.swift
//  UMBC App
//
//  Created by Ben Marshall on 12/5/21.
//

import Foundation

struct Class: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var start : Time
    var end : Time
    var days : [Day]
    
    private var buildingID: Int
    var building : Building? {
        buildings.filter({$0.id == buildingID}).first
    }
    
    var room : String
          
    struct Time : Hashable, Codable {
        var hour : Int
        var minute : Int
    }
        
    enum Day: Int, Hashable, Codable, CustomStringConvertible{
        case MON, TUE, WED, THU, FRI
        var description: String {
            switch self {
                case .MON: return "Mon"
                case .TUE: return "Tue"
                case .WED: return "Wed"
                case .THU: return "Thu"
                case .FRI: return "Fri"
            }
        }
    }
}
