//
//  FirstPage.swift
//  Go Tars!
//
//  Created by Jari Polm on 1/31/22.
//

import SwiftUI

struct FirstPage: View {
    
    
    var body: some View {
        ScrollView{
            VStack{
                Image("TestImage")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.screenWidth)
                

                
                VStack {
                    VStack {
                        
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                            .fontWeight(.heavy)
                            .lineLimit(2)
                            .font(.system(size: 15.0))
                            .padding(.top, 5)
                            .padding(.horizontal)
                        
                        Divider()
                        
                        Group{
                            ArticleRow(image: "list1")
                            Divider()
                            ArticleRow(image: "list2")
                            Divider()
                            ArticleRow(image: "list3")
                            Divider()
                            ArticleRow(image: "list4")
                        }
                        Divider()
                        Group {
                            ArticleRow(image: "list1")
                            Divider()
                            ArticleRow(image: "list2")
                            Divider()
                            ArticleRow(image: "list3")
                            Divider()
                            ArticleRow(image: "list4")
                        }
                        
                    }
                    .background(.white)
                    .cornerRadius(5)
                    .padding()
                }
                .offset(y: -40)
                .padding(.bottom, -40)
            }
            .background(.white)
            
        }
        .background(.bar)
        .ignoresSafeArea()
    }
}

struct FirstPage_Previews: PreviewProvider {
    static var previews: some View {
        FirstPage()
    }
}
