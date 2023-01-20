//
//  SelectionScreenRobot.swift
//  automation_playground_iosUITests
//
//  Created by Muhammad AbdulSalam on 20/01/2023.
//

import Foundation


final class SelectionScreenRobot : BaseRobot{
    
    private lazy var listCurrency = app.collectionViews["currencyList"]

    @discardableResult
    func selectCurrency(currency: String) -> Self {
        tap(listCurrency.buttons[currency])
        return self
    }
    
}
