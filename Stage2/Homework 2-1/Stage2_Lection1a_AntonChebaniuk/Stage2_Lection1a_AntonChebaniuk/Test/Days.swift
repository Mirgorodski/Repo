//
//  Days.swift
//  Stage2_Lection1a_AntonChebaniuk
//
//  Created by Chebanuk Anton on 18.01.2021.
//

import Foundation

enum Days: Int, CaseIterable {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
    
    var title: String {
        switch self {
        case .monday:
            return "MON"
        case .tuesday:
            return "TUE"
        case .wednesday:
            return "WED"
        case .thursday:
            return "THU"
        case .friday:
            return "FRI"
        case .saturday:
            return "SAT"
        case .sunday:
            return "SUN"
        }
        
    }
    
}
