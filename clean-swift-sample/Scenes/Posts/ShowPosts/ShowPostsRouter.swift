//
//  ShowPostsRouter.swift
//  clean-swift-sample
//
//  Created by mac on 13/01/20.
//  Copyright © 2020 mac. All rights reserved.
//

import Foundation

protocol ShowPostsRouterInput {
    func goToPostDetail(withSelectedPost post: Post.ViewModel)
}

class ShowPostsRouter: ShowPostsRouterInput {
    
    weak var viewController: ShowPostsTableViewController!
    
    func goToPostDetail(withSelectedPost post: Post.ViewModel) {
        let postDetailViewController = PostDetailViewController()
        postDetailViewController.post = post
        viewController.navigationController?.pushViewController(postDetailViewController, animated: true)
    }
}
