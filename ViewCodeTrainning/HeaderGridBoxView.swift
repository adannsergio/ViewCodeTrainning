//
//  HeaderGridBoxView.swift
//  ViewCodeTrainning
//
//  Created by Adann Simões on 10/01/19.
//  Copyright © 2019 thiago.lioy. All rights reserved.
//

import UIKit

final class HeaderGridBoxView: UIView {
    
    lazy var imageView: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.backgroundColor = .yellow
        return view
    }()
    
    lazy var textContainer: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .vertical
        view.distribution = .fillProportionally
        view.spacing = 8
        return view
    }()
    
    lazy var title: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .orange
        return view
    }()
    
    lazy var subtitle: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .green
        return view
    }()
    
    lazy var actionContainer: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 15
        return view
    }()
    
    var buttonLeft: UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = .magenta
        return view
    }()
    
    var buttonRight: UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = .cyan
        return view
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HeaderGridBoxView: CodeView {
    func buildViewHierarchy() {
        
    }
    
    func setupConstraint() {
        
    }
    
    func setupAdditionalConfiguration() {
        
    }
}

