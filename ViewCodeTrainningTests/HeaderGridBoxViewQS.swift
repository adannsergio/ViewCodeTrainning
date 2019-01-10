//
//  HeaderGridBoxViewQS.swift
//  ViewCodeTrainningTests
//
//  Created by Adann Simões on 10/01/19.
//  Copyright © 2019 thiago.lioy. All rights reserved.
//

import UIKit
import Quick
import Nimble
import Nimble_Snapshots

@testable import ViewCodeTrainning

class HeaderGridBoxViewQS: QuickSpec {
    override func spec() {
        describe("The UI") {
            it("Should have the expected look and feel") {
                let frame = CGRect(x: 0, y: 0, width: 600, height: 200)
                let view = HeaderGridBoxView(frame: frame)
                expect(view) == recordSnapshot("HeaderGridBoxView")
            }
        }
    }
}
