//
//  FirstPageRow.swift
//  Go Tars!
//
//  Created by Jari Polm on 1/31/22.
//

import SwiftUI

struct ArticleRow: View {
    
    var image: String
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .frame(width: 80, height: 80)
                .scaledToFit()
            VStack(alignment: .leading) {
                Text("Headline")
                    .font(.system(size: 12.0))
                    .fontWeight(.heavy)
                    .foregroundColor(.gray)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                    .fontWeight(.heavy)
                    .lineLimit(4)
                    .font(.system(size: 15.0))
                Spacer()
            }
            Spacer()
        }
        .padding(.vertical, 5)
    }
}
