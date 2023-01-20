//
//  BaseRobot.swift
//  automation_playground_iosUITests
//
//  Created by Muhammad AbdulSalam on 20/01/2023.
//

import XCTest

class BaseRobot{
    
    private static let defaultTimeout: Double = 10
    
    var app: XCUIApplication
    
    init(_ app: XCUIApplication) {
        self.app = app
    }
    
    @discardableResult
    func tap(_ element: XCUIElement, timeout: TimeInterval = BaseRobot.defaultTimeout) -> Self {
        assert(element, [.isHittable], timeout: timeout)
        element.tap()
        return self
    }
    
    @discardableResult
    func typeText(_ element: XCUIElement, text: String ,timeout: TimeInterval = BaseRobot.defaultTimeout) -> Self {
        assert(element, [.isHittable], timeout: timeout)
        element.typeText(text)
        return self
    }
    
    @discardableResult
    func assert(_ element: XCUIElement, _ predicates: [Predicate], timeout: TimeInterval = BaseRobot.defaultTimeout) -> Self {
        let expectation = XCTNSPredicateExpectation(predicate: NSPredicate(format: predicates.map { $0.format }.joined(separator: " AND ")), object: element)
        guard XCTWaiter.wait(for: [expectation], timeout: timeout) == .completed else {
            XCTFail("[\(self)] Element \(element.description) did not fulfill expectation: \(predicates.map { $0.format })")
            return self
        }
        
        return self
    }
    
    @discardableResult
    func checkIfLabelExist(query: String) -> Self {
        assert(app.staticTexts[query], [.exists])
        return self
    }
    
    @discardableResult
    func navigatesToScreen(screenName: String) -> Self{
    
        return self
    }
    
}

enum Predicate {
    case contains(String), doesNotContain(String)
    case exists, doesNotExist
    case isHittable, isNotHittable
    
    var format: String {
        switch self {
        case .contains(let label):
            return "label == '\(label)'"
        case .doesNotContain(let label):
            return "label != '\(label)'"
        case .exists:
            return "exists == true"
        case .doesNotExist:
            return "exists == false"
        case .isHittable:
            return "isHittable == true"
        case .isNotHittable:
            return "isHittable == false"
        }
    }
}
