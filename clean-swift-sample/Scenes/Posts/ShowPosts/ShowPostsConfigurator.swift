//
//  ShowPostsConfigurator.swift
//  clean-swift-sample
//
//  Created by mac on 14/01/20.
//  Copyright © 2020 mac. All rights reserved.
//

import Foundation

class ShowPostsConfigurator {
    
    func configure(fromViewController viewController: ShowPostsTableViewController) {
        let presenter = ShowPostsPresenter()
        presenter.output = viewController
        
        let router = ShowPostsRouter()
        viewController.router = router
        router.viewController = viewController
//        router. = PostDetailViewController()
        
        let interactor = ShowPostsInteractor()
        interactor.output = presenter
        interactor.worker = ShowPostsWorker()
        viewController.output = interactor
    }
}
