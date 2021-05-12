//
//  dataModel.swift
//  ProjetSurfSpot
//
//  Created by Joanna on 06/05/2021.
//

import Foundation
import SwiftUI

class Api {
    func getSpots(completion: @escaping(Record) -> ()) {
        guard let api = URL(string:"https://api.airtable.com/v0/appxT9ln6ixuCb3o1/Surf%20Destinations?api_key=keyTbt7JjwqkfNnYn") else { return }

        URLSession.shared.dataTask(with: api) { (data, _, _) in
            let decoder = JSONDecoder()
            let response = try? decoder.decode(Record.self, from: data!)

            DispatchQueue.main.async {
                completion(response!)
            }
        }
        .resume()
    }
}

//func load() -> Record {
//
//    let session = URLSession.shared
//    let api = URL(string: "https://api.airtable.com/v0/appxT9ln6ixuCb3o1/Surf%20Destinations?api_key=api_key")!
//
//    let task = session.dataTask(with: api) { data, response, error in
//
//        if error != nil || data == nil {
//            fatalError("Client error!")
//            //return
//        }
//        guard let response = response as? HTTPURLResponse, (200...299).contains(response.statusCode) else {
//            fatalError("Server error!")
//            //return
//        }
//
//        guard let mime = response.mimeType, mime == "application/json" else {
//            fatalError("Wrong MIME type!")
//            //return
//        }
//
//        do {
//            let json = try JSONSerialization.jsonObject(with: data!, options: [])
//            return json
//        } catch {
//            fatalError("JSON error: \(error.localizedDescription)")
//        }
//    }
//
//    task.resume()
//}

//load()

//func load(_ filename: String) -> Record {
//    let data: Data
//
//    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
//    else {
//        fatalError("Couldn't find \(filename) in main bundle.")
//    }
//
//    do {
//        data = try Data(contentsOf: file)
//    } catch {
//        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
//    }
//
//    do {
//        let decoder = JSONDecoder()
//        return try decoder.decode(Record.self, from: data)
//    } catch {
//        fatalError("Couldn't parse \(filename) as \(Record.self):\n\(error)")
//    }
//}
//
//let spotList = load("dataRecords.json").records
