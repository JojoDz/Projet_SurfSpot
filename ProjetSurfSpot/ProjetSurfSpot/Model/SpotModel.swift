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

struct Spot: Codable, Hashable {
    static func == (lhs: Spot, rhs: Spot) -> Bool {
        if (lhs.id == rhs.id) {
            return true
        } else {
            return false
        }
    }
    var id: String
    var fields: Fields

}

struct Fields: Codable, Hashable {
    //var title: String
    var place: String
    var image: [Photo]
    var surfBreak: [String]

    enum CodingKeys: String, CodingKey {
        //case title = "Destination"
        case place = "Address"
        case image = "Photos"
        case surfBreak = "Surf Break"
    }
}

struct Photo: Codable, Hashable {
    var url: String
}
