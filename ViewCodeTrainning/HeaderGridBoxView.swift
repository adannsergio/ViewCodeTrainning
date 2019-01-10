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
        view.distribution = .fillEqually
        view.spacing = 10
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
        view.spacing = 10
        return view
    }()
    
    var leftButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = .magenta
        return view
    }()
    
    var rightButton: UIButton = {
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
        addSubview(imageView)
        
        textContainer.addArrangedSubview(title)
        textContainer.addArrangedSubview(subtitle)
        addSubview(textContainer)
        
        actionContainer.addArrangedSubview(leftButton)
        actionContainer.addArrangedSubview(rightButton)
        addSubview(actionContainer)
    }
    
    func setupConstraint() {
        imageView.snp.makeConstraints { (make) in
            make.left.top.bottom.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.3)
        }
        
        textContainer.snp.makeConstraints { (make) in
            make.left.equalTo(imageView.snp.right).offset(10)
            make.top.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.55)
        }
        
        actionContainer.snp.makeConstraints { (make) in
            make.left.equalTo(textContainer.snp.left)
            make.top.equalTo(textContainer.snp.bottom).offset(10)
            make.width.equalTo(textContainer.snp.width)
            make.bottom.equalToSuperview()
        }
    }
    
    func setupAdditionalConfiguration() {
        
    }
}

