//
//  Team.swift
//  Go Tars!
//
//  Created by Jari Polm on 1/30/22.
//

import Foundation

struct Sport: Hashable {
    var name: String
    var icon: String
    var startDate: String
    var endDate: String
}

struct Team: Hashable {
    var sport_id: String
    var image: String
    var abbr: String
    var standings: Bool
    var gender: String
    var sport: Sport
}

