//
//  UnitTestLadderGame.swift
//  UnitTestLadderGame
//
//  Created by Choi Jeong Hoon on 2017. 11. 11..
//  Copyright © 2017년 JH Factory. All rights reserved.
//

import XCTest

class UnitTestLadderGame: XCTestCase {
    func testCheckValues () {
        let inputNames = Array<String>()
        let inputHeight = 0
        let valueData = ValueData(inputNames, inputHeight)
        XCTAssertThrowsError(try CheckingValue().returnResultOfChecking(valueData.names , valueData.heightOfLadder))
    }
    
    func testLadderOfGame() {
        let inputNames = ["hoon","pobi","jake","mine"]
        let inputHeight = 5
        let valueData = ValueData(inputNames,inputHeight)
        let ladderGame = LadderGame(inputValues: (valueData.names,valueData.heightOfLadder))
        XCTAssertNotNil(ladderGame)
        XCTAssertEqual(ladderGame.makeTwoDimentionalArray(ladderGame.participant.count, ladderGame.height).count, 5)
        XCTAssertNotEqual(ladderGame.makeTwoDimentionalArray(ladderGame.participant.count, ladderGame.height).count, 6)
    }
    
    func testParticipantsOfLadderGame() {
        let inputNames = ["honux","pobi","jake","mine"]
        let inputHeight = 5
        let valueData = ValueData(inputNames,inputHeight)
        let ladderGame = LadderGame(inputValues: (valueData.names,valueData.heightOfLadder))
        XCTAssertEqual(ladderGame.participant[0].name , "honux")
        XCTAssertNotNil(ladderGame.participant[3].name)
    }
}
