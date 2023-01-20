//
//  SelectionScreen.swift
//  automation_playground_ios
//
//  Created by Muhammad AbdulSalam on 20/01/2023.
//

import Foundation
import SwiftUI


struct SelectionScreen: View {
    var isDetails: Bool = false
    var isImages: Bool = false
    
    var body: some View {
        let currencyList = UiGenerator.getDummyCurrencyList()
        
        VStack {
            List(currencyList) { currency in
                if(isDetails){
                    UiGenerator.clickableCurrencyItem(
                        destination: DetailsScreen(currencyName: currency.name),
                        currency: currency
                    )
                }
                else {
                    UiGenerator.clickableCurrencyItem(
                        destination: ImagesScreen(currencyName: currency.name),
                        currency: currency
                    )
                }
            }.accessibilityIdentifier("currencyList")
        }
    }
}

struct SelectionScreen_Previews: PreviewProvider {
    static var previews: some View {
        SelectionScreen()
    }
}
