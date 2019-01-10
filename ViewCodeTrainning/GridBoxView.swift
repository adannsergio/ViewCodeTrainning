//
//  GridBoxView.swift
//  ViewCodeTrainning
//
//  Created by Adann Simões on 29/11/18.
//  Copyright © 2018 thiago.lioy. All rights reserved.
//

import UIKit

final class GridBoxView: UIView {
    
    lazy var imageView: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.backgroundColor = .green
        return view
    }()
    
    lazy var textContainer: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .vertical
        view.distribution = .fillEqually
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
        view.backgroundColor = .red
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

extension GridBoxView: CodeView {
    func buildViewHierarchy() {
        addSubview(imageView)
        textContainer.addArrangedSubview(title)
        textContainer.addArrangedSubview(subtitle)
        addSubview(textContainer)
    }
    
    func setupConstraint() {
        imageView.snp.makeConstraints { (make) in
            make.left.top.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.7)
        }
        
        textContainer.snp.makeConstraints { (make) in
            make.left.bottom.right.equalToSuperview()
            make.top.equalTo(imageView.snp.bottom).offset(15)
        }
    }
    
    func setupAdditionalConfiguration() {
        
    }
}

