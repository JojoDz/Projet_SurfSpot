//
//  Data.swift
//  ProjetSurfSpot
//
//  Created by Manon Coulombe on 04/05/2021.
//

import Foundation
import SwiftUI

//let spotList = [
//Spot(id:0, title: "Passage BeauSoleil", place: "Capbreton", country: "France", image:Image("passageSoleil")),
//Spot(id:1, title: "Jolie Vague", place: "Biarritz", country: "France", image: Image("jolieVague")),
//Spot(id:2, title: "The Shark Rock", place: "Sydney", country: "Australie", image: Image("sharkRock"))
//]

struct Record: Codable{
    var records: [Spot]
}

struct Spot: Codable {
    var title: String
    var place: String
    var image: URL
    
    enum CodingKeys: String, CodingKey {
        case title = "Surf Break"
        case image = "Photos"
        case place = "address"
    }
}

var json = """
    {
        "records": [{
                "Surf Break": "Reef Break",
                "Photos": "<https://dl.airtable.com/ZuXJZ2NnTF40kCdBfTld_thomas-ashlock-64485-unsplash.jpg>",
                "address": "Pipeline, Oahu, Hawaii"
            },
            {
                "Surf Break": "Point Break",
                "Photos": "<https://dl.airtable.com/e3QoP3cFSyykZJOvWGIy_cesar-couto-477018-unsplash%20(1).jpg>",
                "address": "Supertubes, Jeffreys Bay, South Africa"
            }
        ]
    }
    """.data(using: .utf8)!

let decoder = JSONDecoder()
let product = try! decoder.decode(Record.self, from: json)
let spotList = product.records
