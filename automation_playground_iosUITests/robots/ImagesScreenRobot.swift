//
//  ImagesScreenRobot.swift
//  automation_playground_iosUITests
//
//  Created by Muhammad AbdulSalam on 20/01/2023.
//

import Foundation


final class ImagesScreenRobot : BaseRobot{
    
    private lazy var btnDetails = app.buttons["Details"]
    
    @discardableResult
    func clickDetalsButton() -> Self {
        tap(btnDetails)
        return self
    }
    
}
