//
//  PostDetailViewController.swift
//  clean-swift-sample
//
//  Created by mac on 14/01/20.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class PostDetailViewController: UIViewController {
    
    var post: Post.ViewModel?
    var postDetailView = PostDetailView()
    
    override func loadView() {
        self.view = postDetailView
    }
    
    override func viewDidLoad() {
        guard let post = self.post else { return }
        print(post)
        postDetailView.titleLabel.text = post.title
        postDetailView.bodyLabel.text = post.body
    }
    
}
