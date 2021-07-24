//
//  PharmacyListViewModel.swift
//  Pharmacy
//
//  Created by Batuhan Baran on 23.07.2021.
//

import Foundation

class PharmacyListViewModel: ObservableObject {
    @Published var name = ""
    @Published var dist = ""
    @Published var address = ""
    @Published var phone = ""
    @Published var dutyPharmacyResult = [DutyPharmacyResult]()
    
    func fetchPharmaciesByCityName(searchedText: String) {
        API.fetch(endPoint: "health/dutyPharmacy?il=\(searchedText)") { (pharmacyList: Result<DutyPharmacy,Error>) in
            switch pharmacyList {
            case .success(let dutyPharmacy):
                self.dutyPharmacyResult = dutyPharmacy.result
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
