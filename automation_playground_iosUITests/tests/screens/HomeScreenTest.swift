//
//  HomeScreenTest.swift
//  automation_playground_iosUITests
//
//  Created by Muhammad AbdulSalam on 20/01/2023.
//

import Foundation
import XCTest


final class HomeScreenNavigationTest: BaseTestCase {

    func test_HomeScreen_To_RateList_Screen() throws {
        
        homeScreenRobot
            .clickRateListButton().navigatesToScreen(screenName: RATE_LIST_SCREEN)
        
    }
    
    func test_HomeScreen_To_Images_Screen() throws {
        
        homeScreenRobot
            .clickImagesButton().navigatesToScreen(screenName: IMAGE_SCREEN)
                
    }
    
    
    func test_HomeScreen_To_Search_Screen() throws {
        
        homeScreenRobot
            .clickSearchButton().navigatesToScreen(screenName: SEARCH_SCREEN)
                
    }
    
    func test_HomeScreen_To_Details_Screen() throws {
        
        homeScreenRobot
            .clickDetailsButton().navigatesToScreen(screenName: DETAILS_SCREEN)
                
    }
    
    func test_HomeScreen_To_Comparison_Screen() throws {
        
        homeScreenRobot
            .clickCompareButton().navigatesToScreen(screenName: COMPARE_SCREEN)
                
    }
        
}
