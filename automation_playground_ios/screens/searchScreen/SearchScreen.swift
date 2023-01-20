//
//  SearchScreen.swift
//  automation_playground_ios
//
//  Created by Muhammad AbdulSalam on 20/01/2023.
//

import Foundation
import SwiftUI


struct SearchScreen: View {
    
    @State var currencyText = UiDataModel(name: "EUR, GBP, etc")
    
    var body: some View {
        VStack {
            UiGenerator.appTextField(stateTextModel: $currencyText)
            UiGenerator.appNavigationButton(
                name: "Search",
                destination: ImagesScreen(currencyName: currencyText.fieldValue.uppercased())
            ).padding(.top)
        }.padding(20)
        
    
    }
    
}

struct SearchScreen_Previews: PreviewProvider {
    static var previews: some View {
        SearchScreen()
    }
}

