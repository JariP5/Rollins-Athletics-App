//
//  NewFiel.swift
//  College Soccer Scores
//
//  Created by Jari Polm on 30.10.21.
//

import Foundation
import SwiftSoup


// get html content of standings
// all standings html seem to be set up the same way for all conferences
@MainActor func fetchStandings(url: URL) async throws -> [Standing]{
    let (data, _) = try await URLSession.shared.data(from: url)
    let contents = String(data: data, encoding: .ascii)
    let fetchedStandings = try readStandingsHTML(html: contents!)
    return fetchedStandings
}


func readStandingsHTML(html: String) throws -> [Standing] {
    let document = try SwiftSoup.parse(html)
    let teams = try document.select("tbody").first()
    
    var standings: [Standing] = []
    
    if teams != nil {
        // loop over each team
        var counter = 1
        
        for team in teams!.children(){
            
            let data = try team.select("td.hide-on-large")
            
            
            standings.append(Standing(name: try data[0].text(), conferenceRecord: try data[1].text(), overallRecord: try data[2].text(), position: counter))
            counter += 1
        }
        
        
    }
    return standings
}

// check that only integers and at least one integer is in the array
func confirmArrayIsValid (array: [String]) -> Bool {
    
    if array.isEmpty {
        return false
    }
    
    for data in array {
        if !data.isInt {
            return false
        }
    }
    return true
}

// check if string is convertible to integer
extension String {
    var isInt: Bool {
        return Int(self) != nil
    }
}


