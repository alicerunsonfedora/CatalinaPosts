//
//  ContentView.swift
//  CatalinaPosts
//
//  Created by Marquis Kurt on 6/7/19.
//  Copyright © 2019 Marquis Kurt. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    var posts: [Post] = []
    
    var body: some View {
        NavigationView {
            List(posts) { post in
                NavigationButton(destination: PostView(post: post)) {
                    PostCell(post: post)
                }
            }
            .navigationBarTitle(Text("My Feed"))
        }
            .accentColor(.purple)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(posts: testPosts)
    }
}
#endif
