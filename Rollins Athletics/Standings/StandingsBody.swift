//
//  StandingsBody.swift
//  College Soccer Scores
//
//  Created by Jari Polm on 24.11.21.
//

import SwiftUI

struct StandingsBody: View {
    @StateObject var viewModel: StandingsViewModel
    var body: some View {
        VStack {
            StandingsHeader()
                .foregroundColor(Color(red: 246 / 255, green: 172 / 255, blue: 36 / 255))
            // loop over teams in conference with their standings data
            ForEach(viewModel.teams, id: \.self) { team in
                
                Divider() // divider between rows
                
                if (team.name == "Rollins") {
                    StandingsRowView(team: team)
                        .foregroundColor(.blue)
                } else {
                    StandingsRowView(team: team)
                }
                
            }
            .frame(maxWidth: .infinity)
        }
        .padding(.bottom, 10)
    }
}

// Present a row in the standings meaning one team
private struct StandingsRowView: View {
    
  var team: Standing
  
  var body: some View {
      
      HStack{
          // display team position
          // if team position not greater than 0 it can be assumed to be a regional header
          Text("\(team.position)")
              .fontWeight(.bold)
              .frame(width: 20)
              .foregroundColor(Color(red: 246 / 255, green: 172 / 255, blue: 36 / 255))

          // team name
          Text(team.name)
              .frame(maxWidth: .infinity, alignment: .leading)
              .allowsTightening(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
              .minimumScaleFactor(0.3)
              .lineLimit(2)
          
          Text(team.conferenceRecord)
              .frame(width: 70)
          Text(team.overallRecord)
              .frame(width: 70)
      }
      .padding(.vertical, 5)
      .padding(.horizontal, 10)
  }
}
