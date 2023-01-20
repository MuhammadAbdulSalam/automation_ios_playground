//
//  HomeScreenRobot.swift
//  automation_playground_iosUITests
//
//  Created by Muhammad AbdulSalam on 20/01/2023.
//

import Foundation
import XCTest

final class HomeScreenRobot : BaseRobot{
    
    private lazy var btnRateList        = app.buttons["RateList"]
    private lazy var btnSearch          = app.buttons["Search"]
    private lazy var btnImages          = app.buttons["Images"]
    private lazy var btnDetails         = app.buttons["Details"]
    private lazy var btnCompare         = app.buttons["Compare"]

    @discardableResult
    func clickRateListButton() -> Self {
        tap(btnRateList)
        return self
    }
    
    @discardableResult
    func clickSearchButton() -> Self {
        tap(btnSearch)
        return self
    }
    
    
    @discardableResult
    func clickImagesButton() -> Self {
        tap(btnImages)
        return self
    }
    
    
    @discardableResult
    func clickDetailsButton() -> Self {
        tap(btnDetails)
        return self
    }
    
    
    @discardableResult
    func clickCompareButton() -> Self {
        tap(btnCompare)
        return self
    }
}

