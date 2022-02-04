//
//  LiveData.swift
//  Go Tars!
//
//  Created by Jari Polm on 1/30/22.
//

import SwiftUI

struct LiveData: View {
    @State private var showStats = false
    @State private var showVideo = false

    var body: some View {
        
        HStack{
            Spacer()
            
            Button {
                showStats.toggle()
            } label: {
                HStack {
                    Image(systemName: "list.number")
                    Text("Live Stats")
                }
            }
            .sheet(isPresented: $showStats) {
                WebView(url: URL(string: "https://www.statbroadcast.com/events/statbroadcast.php?t=1&gid=roll")!)
            }
            
            Divider().background(.white).frame(height: 20).padding()
            
            Button {
                showVideo.toggle()
            } label: {
                HStack {
                    Image(systemName: "video")
                    Text("Live Video")
                }
            }
            .sheet(isPresented: $showVideo) {
                WebView(url: URL(string: "https://sunshinestateconference.tv/rollins/")!)
            }
            
            Spacer()
        }
    }
}
