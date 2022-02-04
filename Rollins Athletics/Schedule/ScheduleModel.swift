//
//  ScheduleViewModel.swift
//  College Soccer Scores
//
//  Created by Jari Polm on 10.11.21.
//

import Foundation

// Schedule View Model
// Fetches the games from the api schedule
// Can be used to store the games
// Also stores the active games selected for that week
class ScheduleViewModel: ObservableObject {
    @Published var games = [Game]() // all games for the whole season
    @Published var fetching = true
    
  
    // get the games from the api
    // needs internet connection
    func fetchSeasonSchedule(team: Team) async{
        fetching = true
        do {
            self.games = try await fetchSchedule(team: team)
            self.fetching = false
        } catch {
            print("Request failed with error: \(error)")
            self.fetching = false
        }
    }
    
}


