//
//  BaseTestCase.swift
//  automation_playground_iosUITests
//
//  Created by Muhammad AbdulSalam on 20/01/2023.
//

import Foundation
import XCTest

class BaseTestCase: XCTestCase {
    
    lazy var app = XCUIApplication()
    lazy var homeScreenRobot = HomeScreenRobot(app)
    lazy var rateListScreenRobot = RateListRobot(app)
    lazy var imageScreenRobot = ImagesScreenRobot(app)
    lazy var selectionScreenRobot = SelectionScreenRobot(app)
    lazy var searchScreenRobot = SearchScreenRobot(app)

    override func setUp() {
        app.launch()

    }
    
}

