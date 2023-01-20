//
//  ImagesScreen.swift
//  automation_playground_ios
//
//  Created by Muhammad AbdulSalam on 20/01/2023.
//

import Foundation
import SwiftUI


struct ImagesScreen: View {
    var currencyName: String

    var body: some View {
        VStack {
            Image(UiGenerator.getCurrency(name: currencyName).image)
                .resizable()
                .frame(width: 300, height: 300)
        
            UiGenerator.appNavigationButton(name: "Details", destination: DetailsScreen(currencyName: currencyName))
        }.padding(20)
    }
    
}

struct ImagesScreen_Previews: PreviewProvider {
    static var previews: some View {
        ImagesScreen(currencyName: "EUR")
    }
}
