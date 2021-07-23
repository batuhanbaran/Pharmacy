//
//  ContentView.swift
//  Pharmacy
//
//  Created by Batuhan Baran on 23.07.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var searchedCity = ""
    @State var isSearched = false
    
    var body: some View {
        NavigationView {
            VStack {
                Image("homeImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 16)
                        .frame(height: 40, alignment: .center)
                        .foregroundColor(.purple)
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 19, height: 19, alignment: .center)
                            .foregroundColor(.white)
                            .padding(.leading)
                        
                        CustomTextField(placeholder: Text("Please enter city")
                                            .kerning(0.7)
                                            .foregroundColor(.white),
                                text: $searchedCity) { change in
                            
                        } commit: {
                            self.isSearched.toggle()
                        }
                        .foregroundColor(.white)
                        Spacer()
                        
                    }
                }.padding()
                
                Spacer()
                
                NavigationLink("", destination: PharmacyListView(searchedText: $searchedCity), isActive: $isSearched)
            }
            .navigationTitle("Pharmacy List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
