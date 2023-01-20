//
//  ContentView.swift
//  automation_playground_ios
//
//  Created by Muhammad AbdulSalam on 20/01/2023.
//

import SwiftUI

struct RateListScreen: View {
    @State var amount = ""
    @State var fetchVisibility = false
    
    var body: some View {
        VStack {
            VStack {
                UiGenerator.currencyFirstRow()
                UiGenerator.currencySecondRow(amount: $amount)
                UiGenerator.getButtonRow(visibility: $fetchVisibility, onClick: {self.fetchVisibility = true})
                Divider().padding(.all)
            }.padding(10)
            Spacer()
            
            if(self.fetchVisibility){UiGenerator.getCurrencyListView()}
        }
    }
}


struct RateListScreen_Previews: PreviewProvider {
    static var previews: some View {
        RateListScreen()
    }
}
