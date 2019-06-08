//
//  PostCell.swift
//  CatalinaPosts
//
//  Created by Marquis Kurt on 6/7/19.
//  Copyright © 2019 Marquis Kurt. All rights reserved.
//

import SwiftUI

struct PostCell : View {
    
    var post: Post
    
    var body: some View {
        HStack {
            Image(systemName: "person")
                .font(.title)
            VStack(alignment: .leading) {
                Text(post.author)
                    .fontWeight(.bold)
                    .font(.headline)
                    .color(.accentColor)
                Text(post.contents)
                    .lineLimit(15)
                
                if post.containsMedia {
                    Text("Contains images")
                        .font(.subheadline)
                        .color(.gray)
                }
            }
        }
    }
}

#if DEBUG
struct PostCell_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            PostCell(post: testPosts[0])
            PostCell(post: testPosts[1])
        }
    }
}
#endif
