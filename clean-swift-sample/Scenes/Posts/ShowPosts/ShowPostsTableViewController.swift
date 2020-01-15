//
//  ShowPostsViewController.swift
//  clean-swift-sample
//
//  Created by mac on 13/01/20.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

protocol ShowPostsViewControllerInput: AnyObject {
    func display(viewModels: [Post.ViewModel])
}

protocol ShowPostsViewControllerOutput {
    func request(_ request: Post.Request)
}

class ShowPostsTableViewController: UITableViewController {
    
    var output: ShowPostsViewControllerOutput!
    var router: ShowPostsRouter!
    var postsTableView = ShowPostsTableView()
    var posts: [Post.ViewModel]?
    
    override func loadView() {
        self.tableView = postsTableView
        ShowPostsConfigurator().configure(fromViewController: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(ShowPostTableViewCell.self, forCellReuseIdentifier: "cell")
        getPosts()
    }
    
    func getPosts() {
        let request = Post.Request(userId: 1)
        output.request(request)
    }
    
    // DataSource
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let countPosts = self.posts?.count else { return 5 }
        return countPosts
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let postCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ShowPostTableViewCell
        guard let cell = postCell else { return UITableViewCell() }
        postCell?.titleLabel.text = self.posts?[indexPath.item].title
        postCell?.bodyLabel.text = self.posts?[indexPath.item].body
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(70)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        router.goToPostDetail(withSelectedPost: (self.posts?[indexPath.row])!)
    }

}

extension ShowPostsTableViewController: ShowPostsViewControllerInput {
    func display(viewModels: [Post.ViewModel]) {
        self.posts = viewModels
        self.tableView.reloadData()
    }
    
}
