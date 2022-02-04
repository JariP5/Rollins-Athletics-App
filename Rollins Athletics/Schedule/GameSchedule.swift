//
//  GameSchedule.swift
//  College Soccer Scores
//
//  Created by Jari Polm on 24.11.21.
//

import SwiftUI

struct GameSchedule: View {
    @ObservedObject var scheduleModel: ScheduleViewModel
    @State var tag = 0
    var body: some View {
        // get all dates where games are played in selected week
        // using the helper method datesInWeek
        // loop over all dates
        ForEach(scheduleModel.games, id: \.self) { game in
            
            VStack(spacing: 0) {
                
                DateView(date: game.trimmedDate)
                    .padding(.horizontal)
                    .padding(.top)
                    .tag(tag)
                
                GameRowView(game: game, postSeason: false)
                    .padding()
            }
            .background(Color.white.shadow(radius: 2))
            .padding(.top, 30)
        }
    }
}

// Presentation of a single game
struct DateView: View {
    var date: Date
    
    var body: some View {
        HStack {
            let calenderDate = Calendar.current.dateComponents([.weekday, .day, .month], from: date)
            
            VStack(alignment: .leading){
                if let weekday = calenderDate.weekday {
                    Text("\(weekDays[weekday - 1])")
                        .fontWeight(.bold)
                        .font(.system(size: 16.0))
                }
                HStack(){
                    if let day = calenderDate.day, let month = calenderDate.month {
                        Text("\(day). \(monthArray[month - 1])")
                            .font(.system(size: 14.0))
                            .foregroundColor(.gray)
                    }
                }
                Divider()
            }
        }
    }
}

let weekDays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
let monthArray = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
