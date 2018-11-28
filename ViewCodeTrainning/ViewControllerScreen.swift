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
    lazy var button: UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = .red
        view.setTitle("Fetch", for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        
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

extension ViewControllerScreen: CodeView {
    func buildViewHierarchy() {
        addSubview(button)
    }
    
    func setupConstraint() {
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15).isActive = true
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15).isActive = true
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .darkGray
    }
}
