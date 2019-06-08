//
//  PostView.swift
//  CatalinaPosts
//
//  Created by Marquis Kurt on 6/7/19.
//  Copyright © 2019 Marquis Kurt. All rights reserved.
//

import SwiftUI

struct PostView : View {
    
    var post: Post
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "person")
                    .font(.title)
                Text(post.author)
                    .font(.title)
                    .fontWeight(.bold)
            }
            
            Text(post.contents)
                .lineLimit(100)
            
            Spacer()
        }
            .navigationBarTitle(Text("Post Details"))
            .padding(.all)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
    }
}

#if DEBUG
struct PostView_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            PostView(post: testPosts[0])
            PostView(post: testPosts[1])

        }
    }
}
#endif
