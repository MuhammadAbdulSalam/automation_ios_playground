//
//  DetailsE2ETest.swift
//  automation_playground_iosUITests
//
//  Created by Muhammad AbdulSalam on 20/01/2023.
//

import Foundation
import XCTest


final class DetailsE2ETest: BaseTestCase {
    
    func test_HomeScreen_RateList_To_Details() throws {
        
        homeScreenRobot
            .clickRateListButton().navigatesToScreen(screenName: DETAILS_SCREEN)
        
        rateListScreenRobot
            .clickFetchButton().loadsRecyclerProducts()
        
        rateListScreenRobot
            .selectCurrency(currency: "GBP").navigatesToScreen(screenName: DETAILS_SCREEN)
        
        imageScreenRobot
            .clickDetalsButton().navigatesToScreen(screenName: DETAILS_SCREEN)
        
    }
    
    func test_HomeScreen_Images_To_Details() throws {
        
        homeScreenRobot
            .clickImagesButton().navigatesToScreen(screenName: DETAILS_SCREEN)
        
        selectionScreenRobot
            .selectCurrency(currency: "GBP").navigatesToScreen(screenName: DETAILS_SCREEN)
        
        imageScreenRobot
            .clickDetalsButton().navigatesToScreen(screenName: DETAILS_SCREEN)
        
    }
    
    func test_HomeScreen_Search_To_Details() throws {
        
        homeScreenRobot
            .clickSearchButton().navigatesToScreen(screenName: DETAILS_SCREEN)
        
        searchScreenRobot
            .enterSearchQuery(text: "GBP").navigatesToScreen(screenName: DETAILS_SCREEN)
        
        imageScreenRobot
            .clickDetalsButton().navigatesToScreen(screenName: DETAILS_SCREEN)
        
    }

}
