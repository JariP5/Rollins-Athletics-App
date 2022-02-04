//
//  ConferenceSchedule.swift
//  College Soccer Scores
//
//  Created by Jari Polm on 31.10.21.
//

import SwiftUI
import SwiftfulLoadingIndicators
import NavigationStack


struct ScheduleView: View {
    
    // create instance of class to hold games after fetching
    // even when view is switched inside of the conference
    @ObservedObject var scheduleModel: ScheduleViewModel
    var team: Team

    
    var body: some View {
        VStack{
            if !scheduleModel.fetching {
                GameSchedule(scheduleModel: scheduleModel)
            } else {
                Text("")
                    .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight - 220)
            }
        }
        .overlay {
            if scheduleModel.fetching {
                LoadingIndicator(animation: .circleTrim, color: .blue, size: .medium, speed: .normal)
            }
        }
        .animation(.default, value: scheduleModel.games)
        .task {
            // load content if link is valid and it was not loaded before
            if (scheduleModel.games.count <= 0){
                await scheduleModel.fetchSeasonSchedule(team: team)
            }
        }
    }
}




// Presentation of a single game
struct GameRowView: View {
    
    var game: Game
    var postSeason: Bool
    
    var body: some View {
        
        let resultText = game.result_text ?? "Not Found"
 
        // in case a game in the conference tournament was decided in penalties
        if resultText.prefix(2).contains("T") && postSeason && game.result?.postscore_info != nil{
            Text((game.result?.postscore_info)!)
                .padding(.top, 15)
                .padding(.horizontal)
        }
        
        HStack{
            // Present both teams divided by horizontal line
            VStack(alignment: .leading){
                Text(game.opponent?.title ?? "Not Found")
                    .lineLimit(1)
                    .allowsTightening(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    .minimumScaleFactor(0.5)
                Divider() // horizontal divider
                
                Text(game.school?.title ?? "Not Found")
                    .lineLimit(1)
                    .allowsTightening(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    .minimumScaleFactor(0.5)
            }
            
            Divider() // vertical divider since embed in HStack
            
            // Check if game was already played or is just scheduled
            if (game.result == nil) {
                // if game is just scheduled result_text represents scheduled time
                Text(resultText)
                    .frame(maxWidth: 80)
                    .lineLimit(1)
                    .allowsTightening(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    .minimumScaleFactor(0.5)
            } else {
                // Present Results
                VStack(alignment: .trailing){ // use trailing in vstack to align subviews
                    Text(game.result!.opponent_score ?? "Not Found")
                        .frame(width: 80)
                        .multilineTextAlignment(.center)
                    Divider() // horizontal divider
                    Text(game.result!.team_score ?? "Not Found")
                        .frame(width: 80)
                        .multilineTextAlignment(.center)
                }
                .frame(maxWidth: 80)
            }
        }
    }
}
