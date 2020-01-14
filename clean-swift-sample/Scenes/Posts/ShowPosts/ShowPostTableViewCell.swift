//
//  ShowPostTableViewCell.swift
//  clean-swift-sample
//
//  Created by mac on 14/01/20.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit
import SnapKit

class ShowPostTableViewCell: UITableViewCell {
    
    var titleLabel: UILabel = {
        let view = UILabel()
        view.adjustsFontSizeToFitWidth = true
        view.minimumScaleFactor = 0.5
        view.numberOfLines = 10
        view.font = UIFont.boldSystemFont(ofSize: CGFloat(16))
        return view
    }()
    
    var bodyLabel: UILabel = {
        let view = UILabel()
        view.adjustsFontSizeToFitWidth = true
        view.minimumScaleFactor = 0.5
        view.numberOfLines = 10
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        accessoryType = .disclosureIndicator
        selectionStyle = .none
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension ShowPostTableViewCell: ViewCode {
    func setupViewHierarchy() {
        addSubview(titleLabel)
        addSubview(bodyLabel)
    }
    
    func setupConstraints() {
        
        titleLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.95)
//            make.leadingMargin.trailingMargin.equalTo(self.snp.leadingMargin)
            make.height.equalToSuperview().multipliedBy(0.5)
        }
        
        bodyLabel.snp.makeConstraints { (make) in
            make.bottom.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.95)
//            make.leadingMargin.trailingMargin.equalTo(self.snp.leadingMargin)
            make.top.equalTo(titleLabel.snp.bottom)
        }
    }
    
    func setupAditionalConfigurations() {
        //
    }
    
}
