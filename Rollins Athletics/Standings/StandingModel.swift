//
//  StandingsViewModel.swift
//  College Soccer Scores
//
//  Created by Jari Polm on 10.11.21.
//

import Foundation

class StandingsViewModel: ObservableObject {
    @Published var teams = [Standing]()
    @Published var fetching = true
  
    func fetchData(link: String, standingsModel: StandingsViewModel) {
        fetching = true
        guard let url = URL(string: "https://sunshinestateconference.com/standings.aspx?path=" + link) else {return}
        Task{
            do {
                self.teams = try await fetchStandings(url: url)
                self.fetching = false
            } catch {
                print("Request failed with error: \(error)")
                self.fetching = false
            }
        }
    }
}
