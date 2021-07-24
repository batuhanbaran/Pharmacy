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
        List {
            ForEach([viewModel.dutyPharmacyResult], id: \.self) { result in
                VStack(alignment: .leading, spacing: 10) {
                    Text("İsmi: \(result.name)")
                        .font(.title2)
                        .fontWeight(.medium)
                    Text("İlçe: \(result.dist)")
                        .font(.callout)
                        .fontWeight(.medium)
                    Text("Adres: \(result.address)")
                        .font(.callout)
                        .fontWeight(.regular)
                        .foregroundColor(.gray)
                }
            }
        }.onAppear(perform: {
            viewModel.fetchPharmaciesByCityName(searchedText: searchedText)
        })

    }
}

struct PharmacyListView_Previews: PreviewProvider {
    static var previews: some View {
        PharmacyListView(searchedText: Binding<String>.constant("İstanbul"))
    }
}
