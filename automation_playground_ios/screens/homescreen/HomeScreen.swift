//
//  HomeScreen.swift
//  automation_playground_ios
//
//  Created by Muhammad AbdulSalam on 20/01/2023.
//

import Foundation
import SwiftUI

struct HomeScreen: View {
    
    var body: some View {
        
        NavigationView{
            VStack{
                HStack {
                    UiGenerator.appNavigationButton(name: "RateList", destination: RateListScreen())
                    UiGenerator.appNavigationButton(name: "Search", destination: SearchScreen())
                    UiGenerator.appNavigationButton(name: "Images", destination: SelectionScreen(isDetails: false, isImages: true))
                }
                
                HStack {
                    UiGenerator.appNavigationButton(name: "Details", destination: SelectionScreen(isDetails: true, isImages: false))
                    UiGenerator.appNavigationButton(name: "Compare", destination: CompareScreen())
                }.padding(.top)
            }
        }

    }
}


struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
