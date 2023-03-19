//
//  BullsEyeSwiftUITests.swift
//  BullsEyeSwiftUITests
//
//  Created by Andas on 19.03.2023.
//

import XCTest
@testable import BullsEyeSwiftUI

final class BullsEyeSwiftUITests: XCTestCase {
    
    var game: Game!

    override func setUpWithError() throws {
        game = Game()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        game = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testScorePositive() {
        let guess = game.target + 5
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    
    func testScoreNegative() {
        let guess = game.target - 5
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
}
