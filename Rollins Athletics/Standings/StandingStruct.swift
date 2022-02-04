//
//  StandingStruct.swift
//  Rollins Athletics
//
//  Created by Jari Polm on 1/31/22.
//

import Foundation

struct Standing: Identifiable, Equatable, Hashable{
    var id = UUID()
    var name: String
    var conferenceRecord: String
    var overallRecord: String
    var position: Int
}
