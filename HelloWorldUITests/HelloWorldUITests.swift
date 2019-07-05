//
//  HelloWorldUITests.swift
//  HelloWorldUITests
//
//  Created by Daniel Almeida on 02/07/2019.
//  Copyright © 2019 Daniel Almeida. All rights reserved.
//

import XCTest

class HelloWorldUITests: XCTestCase {
   

    
    /// Put setup code here. This method is called before the invocation of each test method in the class.
    override func setUp() {
       
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    
    /// Put teardown code here. This method is called after the invocation of each test method in the class.
    override func tearDown() {
        
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    
    /// Test that the window is visible when the application starts
    func testWindowOpens() {
    /*
        let app = XCUIApplication()
        let helloworldWindow = app.windows["HelloWorld"]
        helloworldWindow.click()
        helloworldWindow.buttons["Click Me!"].click()
        app.dialogs["alert"].buttons["Ok"].click()
 */
        
        let app = XCUIApplication()
        let helloworldWindow = app.windows["HelloWorld"]
        XCTAssertTrue(helloworldWindow.isHittable)
    }
    
    func testCanClickButton() {
        let app = XCUIApplication()
        let helloworldWindow = app.windows["HelloWorld"]
        let clickMeButton = helloworldWindow.buttons["Click Me!"]
        XCTAssertTrue(clickMeButton.isHittable)
        clickMeButton.click()
    }
    
    func testAlertWindowOpensAfterButtonClick() {
        let app = XCUIApplication()
        let helloworldWindow = app.windows["HelloWorld"]
        let clickMeButton = helloworldWindow.buttons["Click Me!"]
        clickMeButton.click()
        let alertWindow = app.dialogs["alert"]
        XCTAssertTrue(alertWindow.isHittable)
    }
    
    func testOkAndCancelButtonOnAlertWindow() {
        let app = XCUIApplication()
        let helloworldWindow = app.windows["HelloWorld"]
        let clickMeButton = helloworldWindow.buttons["Click Me!"]
        clickMeButton.click()
        let alertWindow = app.dialogs["alert"]
        XCTAssertTrue(alertWindow.buttons["Ok"].isHittable)
        XCTAssertTrue(alertWindow.buttons["Cancel"].isHittable)
    }
    
    func testOkButtonClick() {
        let app = XCUIApplication()
        let helloworldWindow = app.windows["HelloWorld"]
        helloworldWindow.click()
        helloworldWindow.buttons["Click Me!"].click()
        app.dialogs["alert"].buttons["Ok"].click()
        XCTAssertTrue(helloworldWindow.buttons["You pressed OK"].isHittable)
        print(helloworldWindow.buttons.firstMatch.debugDescription)
        XCTAssertEqual(helloworldWindow.buttons.firstMatch.title, "You pressed OK")
    }
    
    func testCancelButtonClick() {
        let app = XCUIApplication()
        let helloworldWindow = app.windows["HelloWorld"]
        helloworldWindow.click()
        helloworldWindow.buttons["Click Me!"].click()
        app.dialogs["alert"].buttons["Cancel"].click()
        XCTAssertTrue(helloworldWindow.buttons["You pressed Cancel"].isHittable)
        print(helloworldWindow.buttons.firstMatch.debugDescription)
        XCTAssertEqual(helloworldWindow.buttons.firstMatch.title, "You pressed Cancel")
    }
    
}
