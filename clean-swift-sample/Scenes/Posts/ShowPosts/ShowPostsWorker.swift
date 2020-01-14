//
//  ShowPostsWorker.swift
//  clean-swift-sample
//
//  Created by mac on 13/01/20.
//  Copyright © 2020 mac. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class ShowPostsWorker {
    func getPosts(fromRequest request: Post.Request, onSuccess: @escaping ([Post.Model]) -> (), onFailure: @escaping (Error) -> ()) {
        let stringUrl = "https://jsonplaceholder.typicode.com/users/\(request.userId)/posts"
        let url = URL(string: stringUrl)
        
        AF.request(url!).validate().responseJSON { response in
            switch response.result {
            case .success:
                do {
                    let posts = try JSONDecoder().decode([Post.Model].self, from: response.data!)
                    print(posts)
                    onSuccess(posts)
                } catch {
                    
                }
            case .failure(let error):
                onFailure(error)
            }
        }
    }
}
