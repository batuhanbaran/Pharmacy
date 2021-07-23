//
//  PharmacyListView.swift
//  Pharmacy
//
//  Created by Batuhan Baran on 23.07.2021.
//

import SwiftUI

struct PharmacyListView: View {
    
    @ObservedObject var viewModel = PharmacyListViewModel()
    @Binding var searchedText: String
    
    var body: some View {
        Text("Hello, World!")
            .onAppear(perform: {
                viewModel.fetchPharmaciesByCityName(searchedText: searchedText)
            })
        
    }
}
