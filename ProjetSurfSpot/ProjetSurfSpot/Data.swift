//
//  Data.swift
//  ProjetSurfSpot
//
//  Created by Manon Coulombe on 04/05/2021.
//

import Foundation
import SwiftUI

var json = """
    {
        "records": [{
                "id": 0,
                "Surf Break": "Reef Break",
                "Photos": "https://dl.airtable.com/ZuXJZ2NnTF40kCdBfTld_thomas-ashlock-64485-unsplash.jpg",
                "address": "Pipeline, Oahu, Hawaii"
            },
            {
                "id": 1,
                "Surf Break": "Point Break",
                "Photos": "https://dl.airtable.com/e3QoP3cFSyykZJOvWGIy_cesar-couto-477018-unsplash%20(1).jpg",
                "address": "Supertubes, Jeffreys Bay, South Africa"
            }
        ]
    }
    """.data(using: .utf8)!

let decoder = JSONDecoder()
let product = try! decoder.decode(Record.self, from: json)
let spotList = product.records
