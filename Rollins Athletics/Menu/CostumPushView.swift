//
//  PushView.swift
//  Go Tars!
//
//  Created by Jari Polm on 1/31/22.
//

import SwiftUI
import NavigationStack

struct CostumPushView: View {
    var tabs: [String]
    var team: Team
    
    var body: some View {
        
        PushView(destination: DetailedTeamView(team: team, tabs: tabs)) {
            HStack{
                Image(team.sport.name)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .scaledToFit()
                Text(team.sport.name)
            }
        }
    }
}
