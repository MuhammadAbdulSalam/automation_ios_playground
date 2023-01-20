//
//  SearchScreenRobot.swift
//  automation_playground_iosUITests
//
//  Created by Muhammad AbdulSalam on 20/01/2023.
//

import Foundation

final class SearchScreenRobot : BaseRobot{
    
    private lazy var tfSearch = app.textFields["queryText"]
    private lazy var btnSearch = app.buttons["Search"]

    @discardableResult
    func typeSearchText(text: String) -> Self {
        typeText(tfSearch, text: text)
        return self
    }
    
    @discardableResult
    func enterSearchQuery(text: String) -> Self {
        tap(tfSearch)
        typeText(tfSearch, text: text)
        tap(btnSearch)
        return self
    }
    
}
