//
//  GridBoxView.swift
//  ViewCodeTrainningTests
//
//  Created by Adann Simões on 28/11/18.
//  Copyright © 2018 thiago.lioy. All rights reserved.
//
import UIKit
import Quick
import Nimble
import Nimble_Snapshots

@testable import ViewCodeTrainning

class GridBoxViewQS: QuickSpec {
    override func spec() {
        describe("The 'UI'") {
            it("Should have the expected look and feel") {
                let frame = CGRect(x: 0, y: 0, width: 250, height: 300)
                let view = GridBoxView(frame: frame)
                expect(view) == recordSnapshot("GridBoxViewQS")
            }
        }
    }
}
