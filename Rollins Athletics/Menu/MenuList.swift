//
//  List.swift
//  Go Tars!
//
//  Created by Jari Polm on 1/29/22.
//

import SwiftUI
import NavigationStack

struct MenuList: View {
    
    var tabsStandings = ["Schedule", "Standings", "Roster", "News"]
    var tabs = ["Schedule", "Roster", "News"]
    
    var body: some View {
        
        List{
            
            Section(header: Text("Men").fontWeight(.heavy).foregroundColor(.blue)) {
                Group {
                    ForEach(menTeams, id: \.self) { team in
                        if (team.standings) {
                            CostumPushView(tabs: tabsStandings, team: team)
                        } else {
                            CostumPushView(tabs: tabs, team: team)
                        }
                    }
                }
            }
            
            Section(header: Text("Women").fontWeight(.heavy).foregroundColor(.blue)) {
                Group {
                    ForEach(womenTeams, id: \.self) { team in
                        if (team.standings) {
                            CostumPushView(tabs: tabsStandings, team: team)
                        } else {
                            CostumPushView(tabs: tabs, team: team)
                        }
                    }
                }
            }
        }
        .listStyle(.grouped)
        .onAppear{
            UITableView.appearance().showsVerticalScrollIndicator = false
        }
    }
}
