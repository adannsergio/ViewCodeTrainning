//
//  ViewControllerScreen.swift
//  ViewCodeTrainning
//
//  Created by Adann Simões on 28/11/18.
//  Copyright © 2018 thiago.lioy. All rights reserved.
//

import UIKit

final class ViewControllerScreen: UIView {
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        let button = UIButton(frame: .zero)
        button.backgroundColor = .red
        button.setTitle("Fetch", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        /// Add view
        addSubview(button)
        
        /// Setup constraint
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15).isActive = true
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15).isActive = true
        
        
        /// Misc
        backgroundColor = .darkGray
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
