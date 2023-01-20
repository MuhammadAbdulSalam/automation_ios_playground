//
//  RateListRobot.swift
//  automation_playground_iosUITests
//
//  Created by Muhammad AbdulSalam on 20/01/2023.
//

import Foundation

final class RateListRobot : BaseRobot{
    
    private lazy var btnFetch = app.buttons["Fetch"]
    private lazy var listCurrency = app.collectionViews["currencyList"]
    
    
    @discardableResult
    func clickFetchButton() -> Self {
        tap(btnFetch)
        return self
    }
    
    @discardableResult
    func loadsRecyclerProducts() -> Self {
        
        return self
    }
    
    @discardableResult
    func selectCurrency(currency: String) -> Self {
        tap(listCurrency.buttons[currency])
        return self
    }
    
}
