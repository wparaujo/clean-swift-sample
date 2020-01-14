//
//  Post.swift
//  clean-swift-sample
//
//  Created by mac on 13/01/20.
//  Copyright © 2020 mac. All rights reserved.
//

import Foundation

struct Post {
    
    struct Model: Codable {
        var userId: Int
        var id: Int
        var title: String
        var body: String
    }
    
    struct ViewModel {
        var title: String
        var body: String
    }
    
    struct Request {
        var userId: Int
    }
    
    struct Response {
        var posts: [Post.Model]
    }
}
