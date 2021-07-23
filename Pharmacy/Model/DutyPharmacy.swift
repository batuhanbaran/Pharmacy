//
//  DutyPharmacy.swift
//  Pharmacy
//
//  Created by Batuhan Baran on 23.07.2021.
//

import Foundation

struct DutyPharmacy: Codable {
    let success: Bool
    let result: [DutyPharmacyResult]
}

struct DutyPharmacyResult: Codable {
    let name: String
    let dist: String
    let address: String
    let phone: String
    let loc: String
}
