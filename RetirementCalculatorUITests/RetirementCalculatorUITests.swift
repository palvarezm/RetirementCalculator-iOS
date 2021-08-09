//
//  RetirementCalculatorUITests.swift
//  RetirementCalculatorUITests
//
//  Created by Paul Alvarez on 8/08/21.
//

import XCTest

class RetirementCalculatorUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let throwErrorButton = XCUIApplication().buttons["MainButton"]
        throwErrorButton.tap()
        
        let buttonTappedScreenshot = throwErrorButton.screenshot()
        let buttonTappedAttachment = XCTAttachment(screenshot: buttonTappedScreenshot)
        buttonTappedAttachment.name = "Button screenshot after one tap is applied"
        buttonTappedAttachment.lifetime = .keepAlways
        add(buttonTappedAttachment)
        
        XCTAssertEqual(throwErrorButton.exists, true)
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
}
