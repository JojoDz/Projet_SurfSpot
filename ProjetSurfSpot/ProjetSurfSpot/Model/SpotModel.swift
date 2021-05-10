//
//  spotdb.swift
//  ProjetSurfSpot
//
//  Created by Joanna on 03/05/2021.
//

import Foundation
import SwiftUI

struct Record: Codable {
    var records: [Spot]
}

struct Spot: Codable, Identifiable {
    var id: String
    var fields: Fields

}

struct Fields: Codable {
    var title: String
    var place: String
    var image: [Photo]
    
    enum CodingKeys: String, CodingKey {
        case title = "Destination"
        case place = "Address"
        case image = "Photos"
    }
}

struct Photo: Codable {
    var url: String
}
