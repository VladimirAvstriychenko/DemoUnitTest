//
//  DemoUnitTestTests.swift
//  DemoUnitTestTests
//
//  Created by Владимир on 22.09.2021.
//

import XCTest
@testable import DemoUnitTest

class DemoUnitTestTests: XCTestCase {

    var sut: ViewController!
    override func setUpWithError() throws {
        super.setUp()
        sut = ViewController()
    }

    override func tearDownWithError() throws {
        
        super.tearDown()
    }

    func testLowestVolumeShouldBeZero() {
//        let sut = ViewController()
        sut.setVolume(value: -100)
        let volume = sut.volume
        XCTAssert(volume == 0, "Lowest volume should be equal 0.")
    }

    func testHighestVolumeShouldBeZero() {
//        let sut = ViewController()
        sut.setVolume(value: 200)
        let volume = sut.volume
        XCTAssert(volume == 100, "Highest volume should be equal 100.")
    }
    
    func testCharsInStringsAreTheSame() {
        //given
        let string1 = "qwerty"
        let string2 = "ytrewq"
        //when
        let bool = sut.charactersCompare(stringOne: string1, stringTwo: string2)
        //then
        XCTAssert(bool, "Chacter should be the same in two strings")
    }
    
    func testCharsInStringsAreDifferent() {
        //given
        let string1 = "qwerty1"
        let string2 = "ytrewq"
        //when
        let bool = sut.charactersCompare(stringOne: string1, stringTwo: string2)
        //then
        XCTAssert(!bool, "Chacter should be different in two strings")
    }

}
