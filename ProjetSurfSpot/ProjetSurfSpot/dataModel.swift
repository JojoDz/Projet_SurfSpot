//
//  dataModel.swift
//  ProjetSurfSpot
//
//  Created by Joanna on 06/05/2021.
//

import Foundation

//var spotList: [Spot] = load(filename:"dataRecords.json")

func load(_ filename: String) -> Record {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(Record.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(Record.self):\n\(error)")
    }
}

//func load2(_ filename: String) -> Record{
//    let data: Data
//    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
//    else {
//        fatalError("Couldn't find \(filename) in main bundle.")
//    }
//    do {
//        data = try Data(contentsOf: file)
//    } catch {
//        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
//    }
//    do {
//        let decoder = JSONDecoder()
//        return try decoder.decode(Record.self, from: data)
//    } catch {
//        fatalError("Couldn't parse \(filename) as \(Record.self):\n\(error)")
//    }
//}
let spotList = load("dataRecords.json").records

//struct Record : Decodable {
//    var records: [Spot]
//}
