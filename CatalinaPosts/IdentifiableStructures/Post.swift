//
//  Post.swift
//  CatalinaPosts
//
//  Created by Marquis Kurt on 6/7/19.
//  Copyright © 2019 Marquis Kurt. All rights reserved.
//

import Foundation
import SwiftUI


enum PostVisibility {
    case `public`
    case unlisted
    case `private`
    case direct
}

public struct Post: Identifiable {
    public var id = UUID()
    var author: String
    var contents: String
    var containsMedia: Bool
    var visibleTo: PostVisibility
}

#if DEBUG
let testPosts = [
    Post(author: "Alice Angel", contents: "Wow, that's a lot to take in!", containsMedia: false, visibleTo: .unlisted),
    Post(author: "Asriel Dreemurr", contents: "Wow, this iPadOS thing... I can get behind it. Runs without a hitch on my iPad Pro!", containsMedia: true, visibleTo: .public),
    Post(author: "Tim Cook", contents: "What a great keynote! We can't wait to see what you create", containsMedia: false, visibleTo: .public),
    Post(author: "Monika", contents: "Just Monika~ 💚", containsMedia: false, visibleTo: .private),
    Post(author: "Alice Angel", contents: "Not sure if I really approve of that avocado toast app. Rly?", containsMedia: true, visibleTo: .direct)
]
#endif
