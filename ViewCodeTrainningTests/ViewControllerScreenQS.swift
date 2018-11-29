//
//  ViewControllerScreenQS.swift
//  ViewCodeTrainningTests
//
//  Created by Adann Simões on 29/11/18.
//  Copyright © 2018 thiago.lioy. All rights reserved.
//

import UIKit
import Quick
import Nimble
import Nimble_Snapshots

@testable import ViewCodeTrainning

class ViewControllerScreenQS: QuickSpec {
    override func spec() {
        describe("The 'UI'") {
            it("should have the expected look and feel") {
                let frame = UIScreen.main.bounds
                let view = ViewControllerScreen(frame: frame)
                expect(view) == recordSnapshot("ViewControllerScreen")
            }
        }
    }
}
