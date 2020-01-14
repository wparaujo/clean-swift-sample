//
//  ShowPostsTableView.swift
//  clean-swift-sample
//
//  Created by mac on 14/01/20.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class ShowPostsTableView: UITableView {
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        backgroundColor = .white
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension ShowPostsTableView: ViewCode {
    
    func setupViewHierarchy() {
        //
    }
    
    func setupConstraints() {
        self.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top)
        }
    }
    
    func setupAditionalConfigurations() {
        //
    }
    
}


