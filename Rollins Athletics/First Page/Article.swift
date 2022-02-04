//
//  Article.swift
//  Go Tars!
//
//  Created by Jari Polm on 1/31/22.
//

import SwiftUI

struct Article: View {
    @State var text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ac molestie massa, nec fermentum magna. Phasellus vel orci fermentum, luctus orci vel, rutrum nisl. Nunc id iaculis eros, posuere interdum nisi. Integer euismod leo eros, eu tincidunt felis rutrum id. Morbi fermentum sem sit amet egestas dapibus. Maecenas nec iaculis orci. Sed rutrum, odio vel rutrum cursus, nisi nisi luctus arcu, et efficitur nunc nisi sit amet lorem. Nulla cursus ligula ut erat semper eleifend. Donec eu mi sed lacus tincidunt finibus. Curabitur pharetra consectetur consequat. Sed vulputate tincidunt nulla, faucibus malesuada sem ultrices eu. Vivamus tristique sed urna vitae malesuada. Sed tincidunt, ex vitae cursus tincidunt, justo sem mattis erat, vel fringilla enim dui at dolor. Nunc in tincidunt purus. Fusce non arcu lorem. Integer et metus sed ex faucibus hendrerit sed faucibus purus. Maecenas sit amet sapien id erat feugiat viverra. Vivamus tincidunt felis est, eget tempor lorem ullamcorper a. Maecenas risus purus, rutrum at sapien at, molestie efficitur orci. Praesent accumsan ultrices nulla, sed tristique diam ultricies sit amet. Quisque facilisis id mauris placerat euismod. Pellentesque sodales nulla neque, ac maximus magna vehicula quis. Donec sem mauris, viverra in libero in, posuere finibus elit. Donec pretium purus ac fringilla tempus. Nulla non tincidunt sapien. Aliquam erat volutpat. In viverra, mi sit amet tempus volutpat, neque mauris fermentum sapien, in hendrerit elit nisi id erat. Phasellus dictum, neque sit amet malesuada suscipit, lorem nisi rhoncus risus, et venenatis libero enim quis nunc. Curabitur venenatis porttitor felis, eget molestie turpis tincidunt ut. Donec et sodales neque. Suspendisse ex est, congue a lobortis sit amet, bibendum vitae arcu. Morbi id risus et diam consequat venenatis ac sit amet metus. Nulla ut faucibus nisl. Duis dictum diam nec fermentum tincidunt. Fusce et tristique enim. Praesent ac volutpat tellus. Integer sollicitudin feugiat volutpat."
    var body: some View {
        Text(text)
        TextView(text: $text)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        
    }
}

struct Article_Previews: PreviewProvider {
    static var previews: some View {
        Article()
    }
}
