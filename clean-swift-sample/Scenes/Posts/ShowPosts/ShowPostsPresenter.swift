//
//  ShowPostsPresenter.swift
//  clean-swift-sample
//
//  Created by mac on 13/01/20.
//  Copyright © 2020 mac. All rights reserved.
//

import Foundation

protocol ShowPostsPresenterInput {
    func present(_ response: Post.Response)
}

protocol ShowPostsPresenterOutput {
    func display(viewModels: [Post.ViewModel])
}

class ShowPostsPresenter: ShowPostsInteractorOutput {
    weak var output: ShowPostsViewControllerInput!
    
    func present(response: Post.Response) {
        print(response)
        let postViewModel = response.posts.map { (postModel) -> Post.ViewModel in
            let viewModel = Post.ViewModel(title: postModel.title, body: postModel.body)
            return viewModel
        }
        print(postViewModel)
        output.display(viewModels: postViewModel)
    }
}
