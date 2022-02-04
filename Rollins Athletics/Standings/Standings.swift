//
//  Standings.swift
//  Rollins Athletics
//
//  Created by Jari Polm on 1/31/22.
//

import SwiftUI
import SwiftfulLoadingIndicators

struct Standings: View {
    @ObservedObject var viewModel: StandingsViewModel // store and download data
    var link: String
    
    var body: some View {
        
        VStack {
            // present when data is loaded
            if !viewModel.fetching {
                StandingsBody(viewModel: viewModel)
            } else {
                Text("")
                    .frame(height: UIScreen.screenHeight - 220)
            }
        }
        .frame(maxWidth: .infinity)
        .overlay {
            if viewModel.fetching {
                LoadingIndicator(animation: .circleTrim, color: .blue, size: .medium, speed: .normal)
            }
        }
        .animation(.default, value: viewModel.teams)
        .task {
            if (viewModel.teams.count <= 0){
                viewModel.fetchData(link: link, standingsModel: viewModel)
            }
        }
    }
}
