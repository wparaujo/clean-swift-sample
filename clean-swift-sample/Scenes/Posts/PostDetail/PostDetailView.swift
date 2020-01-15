//
//  PostDetailView.swift
//  clean-swift-sample
//
//  Created by mac on 15/01/20.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class PostDetailView: UIView {
    
    var titleLabel: UILabel = {
        let view = UILabel()
        view.adjustsFontSizeToFitWidth = true
        view.minimumScaleFactor = 0.5
        view.numberOfLines = 1000
        view.font = UIFont.boldSystemFont(ofSize: CGFloat(20))
        return view
    }()
    
    var bodyLabel: UILabel = {
        let view = UILabel()
        view.adjustsFontSizeToFitWidth = true
        view.minimumScaleFactor = 0.5
        view.numberOfLines = 1000
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension PostDetailView: ViewCode {
    func setupViewHierarchy() {
        addSubview(titleLabel)
        addSubview(bodyLabel)
    }
    
    func setupConstraints() {
        titleLabel.snp.makeConstraints { (make) in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.3)
        }
        
        bodyLabel.snp.makeConstraints { (make) in
            make.top.equalTo(titleLabel.snp.bottomMargin)
            make.leading.trailing.bottom.equalToSuperview()
        }
    }
    
    func setupAditionalConfigurations() {
        
    }
    
    
}


