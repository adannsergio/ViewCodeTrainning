//
//  ViewController.swift
//  ViewCodeTrainning
//
//  Created by thiago.lioy on 4/25/18.
//  Copyright © 2018 thiago.lioy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func loadView() {
        let view = UIView(frame: UIScreen.main.bounds)
        view.backgroundColor = .red
        self.view = view
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

