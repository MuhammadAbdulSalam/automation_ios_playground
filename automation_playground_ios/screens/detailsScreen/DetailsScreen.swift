//
//  DetailsScreen.swift
//  automation_playground_ios
//
//  Created by Muhammad AbdulSalam on 20/01/2023.
//
import Foundation
import SwiftUI


struct DetailsScreen: View {
    var currencyName: String
    
    var body: some View {
        VStack {
        
            Image(UiGenerator.getCurrency(name: currencyName).image)
                .resizable()
                .frame(width: 100, height: 100)
            
            Text(UiGenerator.lorumIpsumText).padding(.top)
            
        }.padding(20)
    }
    
}

struct DetailsScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailsScreen(currencyName: "GBP")
    }
}

