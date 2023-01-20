//
//  UiGenerator.swift
//  automation_playground_ios
//
//  Created by Muhammad AbdulSalam on 20/01/2023.
//

import Foundation
import SwiftUI

struct Currency: Identifiable {
    var id: Int
    var image: String
    var name: String
    var value: String
}

// A struct to store exactly one restaurant's data.
struct ButtonModel: Identifiable {
    let id = UUID()
    let name: String
}

struct UiDataModel {
    
    init(name: String){
        self.fieldName = name
    }
    
    var fieldName: String
    var fieldValue: String = ""
    var showErrorMessage: Bool = false
    var isRequired: Bool = false
    var textMask: String = ""
}

class UiGenerator{
    
    static let lorumIpsumText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged"
    
    static func appTextField(stateTextModel: Binding<UiDataModel>,
                             onTapGesture: @escaping (String) -> () = {_ in }) -> some View{
        
        return TextField( stateTextModel.fieldName.wrappedValue, text: stateTextModel.fieldValue)
            .textInputAutocapitalization(.characters)
            .disableAutocorrection(true)
            .frame(height: 40)
            .textFieldStyle(.roundedBorder)
            .onTapGesture {
                onTapGesture(stateTextModel.fieldName.wrappedValue)
            }
            .alert(isPresented: stateTextModel.showErrorMessage) {
                let errorMessage = stateTextModel.fieldValue.wrappedValue.isEmpty ? stateTextModel.fieldName.wrappedValue + " cannot be left blank. Please enter a value" : ""
                return Alert(title: Text("Error"), message: Text(errorMessage), dismissButton: .default(Text("OK")))
            }
            .accessibilityIdentifier("queryText")
    }
    
    static func currencyFirstRow() -> some View{
        return HStack{
            Text("Default Currency")
            Spacer()
            Text("EUR")
        }
    }
    
    static func currencySecondRow(amount: Binding<String>) -> some View {
        return HStack{
            Text("Amount")
            Spacer()
            TextField("amount", text: amount).fixedSize()
        }.padding(.top)
    }
    
    static func appNavigationButton(name: String, destination: some View) -> some View{
        NavigationLink(destination: destination) {
            Text(name)
                .padding(10)
                .background(Color.purple)
                .foregroundColor(Color.white)
                .cornerRadius(10)
        }
    }
    
    static func getButtonRow(visibility: Binding<Bool>, onClick: @escaping () -> ()) -> some View{
        return HStack{
            if(visibility.wrappedValue){
                Button("History"){}
            }
            
            Spacer()
            Button("Fetch"){onClick()}
            
        }.padding(.top)
    }
    
    static func clickableCurrencyItem(destination: some View, currency: Currency)-> some View{
        return NavigationLink(destination: destination){
            HStack{
                Image(currency.image)
                Text(currency.name)
                Spacer()
                Text(currency.value)
            }
        }.accessibilityIdentifier(currency.name)
    }
    
    static func getCurrencyListView() -> some View{
        let currencyList = getDummyCurrencyList()
        
        return List(currencyList){ currency in
            clickableCurrencyItem(destination: ImagesScreen(currencyName: currency.name), currency: currency)
        }.accessibilityIdentifier("currencyList")
    }
    
    static func getDummyCurrencyList() -> Array<Currency>{
        var currencyList = [Currency]()
        currencyList.append(Currency(id: 1, image: "ic_gbp", name: "GBP", value: "10.0"))
        currencyList.append(Currency(id: 2, image: "ic_aud", name: "AUD", value: "200.0"))
        currencyList.append(Currency(id: 3, image: "ic_cad", name: "CAD", value: "121.3"))
        currencyList.append(Currency(id: 4, image: "ic_chf", name: "CHF", value: "21.3"))
        currencyList.append(Currency(id: 6, image: "ic_cny", name: "CNY", value: "101.1"))
        currencyList.append(Currency(id: 7, image: "ic_japan", name: "JNY", value: "331.2"))
        currencyList.append(Currency(id: 8, image: "ic_nzd", name: "NZD", value: "121.2"))
        currencyList.append(Currency(id: 9, image: "ic_sek", name: "SEK", value: "110.0"))
        currencyList.append(Currency(id: 10, image: "ic_euro", name: "EUR", value: "10.0"))
        
        return currencyList
    }
    
    static func getCurrency(name: String) -> Currency{
        let currencyList = getDummyCurrencyList()
        let currency = currencyList.first(where: {$0.name == name})
        if(currency == nil){
            return currencyList[0]
        }
        return currency!
    }
}
