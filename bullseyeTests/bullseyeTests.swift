//
//  bullseyeTests.swift
//  bullseyeTests
//
//  Created by Ariq Heritsa on 12/01/21.
//

import XCTest
@testable import bullseye

class bullseyeTests: XCTestCase {
  
  var game: Game!
  
  override func setUpWithError() throws {
    game = Game()
  }
  
  override func tearDownWithError() throws {
    game = nil
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
  
  func testScoreBullseye() {
    let guess = game.target
    let score = game.points(sliderValue: guess)
    
    XCTAssertEqual(score, 100)
  }
}
