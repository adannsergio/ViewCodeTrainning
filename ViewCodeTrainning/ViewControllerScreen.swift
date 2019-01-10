//
//  ViewControllerScreen.swift
//  ViewCodeTrainning
//
//  Created by Adann Simões on 28/11/18.
//  Copyright © 2018 thiago.lioy. All rights reserved.
//

import UIKit

final class ViewControllerScreen: UIView {
    /// Cake recipe
    /// Lazy because if I need to use another method inside the init closure itself
    var button: UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = .red
        view.setTitle("Fetch", for: .normal)
        view.layer.cornerRadius = 6
        //view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var gridContainer: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 8
        return view
    }()
    
    let leftBox = GridBoxView()
    let rightBox = GridBoxView()
    
    let headerBox = HeaderGridBoxView()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ViewControllerScreen: CodeView {
    func buildViewHierarchy() {
        addSubview(button)
        gridContainer.addArrangedSubview(leftBox)
        gridContainer.addArrangedSubview(rightBox)
        addSubview(gridContainer)
        addSubview(headerBox)
    }
    
    func setupConstraint() {
        // The lazy way to do constraints with view code
//        button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15).isActive = true
//        button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15).isActive = true
//        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        button.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15).isActive = true
        
        button.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().inset(15)
            make.height.equalTo(50)
            make.bottom.equalTo(self).inset(15)
            
        }
        
        gridContainer.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().inset(20)
            make.height.equalTo(200)
            make.centerY.equalToSuperview()
            
        }
        
        headerBox.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(85)
            make.width.equalTo(gridContainer.snp.width)
            make.left.equalTo(gridContainer.snp.left)
            make.height.equalTo(100)
        }
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .darkGray
    }
}
