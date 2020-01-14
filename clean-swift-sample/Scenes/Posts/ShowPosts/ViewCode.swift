//
//  ViewCode.swift
//  clean-swift-sample
//
//  Created by mac on 14/01/20.
//  Copyright © 2020 mac. All rights reserved.
//

import Foundation

protocol ViewCode {
    func setupViewHierarchy()
    func setupConstraints()
    func setupAditionalConfigurations()
    func setupView()
}

extension ViewCode {
    func setupView() {
        setupViewHierarchy()
        setupConstraints()
        setupAditionalConfigurations()
    }
}
