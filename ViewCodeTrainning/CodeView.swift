//
//  CodeView.swift
//  ViewCodeTrainning
//
//  Created by Adann Simões on 28/11/18.
//  Copyright © 2018 thiago.lioy. All rights reserved.
//

import Foundation
import SnapKit

protocol CodeView {
    func buildViewHierarchy()
    func setupConstraint()
    func setupAdditionalConfiguration()
    func setupView()
}

/// Execute all methods in right sequence
extension CodeView {
    func setupView() {
        buildViewHierarchy()
        setupConstraint()
        setupAdditionalConfiguration()
    }
}
