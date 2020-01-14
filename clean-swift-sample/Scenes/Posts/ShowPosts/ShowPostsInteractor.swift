//
//  ShowPostsInteractor.swift
//  clean-swift-sample
//
//  Created by mac on 13/01/20.
//  Copyright © 2020 mac. All rights reserved.
//

import Foundation

protocol ShowPostsInteractorInput {
    func request(_ request: Post.Request)
}

protocol ShowPostsInteractorOutput {
    func present(response: Post.Response)
}

class ShowPostsInteractor: ShowPostsInteractorInput {
    var output: ShowPostsInteractorOutput!
    var worker: ShowPostsWorker!
    
    func request(_ request: Post.Request) {
        worker.getPosts(fromRequest: request, onSuccess: { posts in
            let postsResponse = Post.Response(posts: posts)
            self.output.present(response: postsResponse)
        }) { (error) in
            //
        }
    }
}

extension ShowPostsInteractor: ShowPostsViewControllerOutput {
    
}
