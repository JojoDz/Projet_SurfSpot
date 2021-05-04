//
//  spotdb.swift
//  ProjetSurfSpot
//
//  Created by Joanna on 03/05/2021.
//

import Foundation
import SwiftUI

struct Spot: Identifiable {
    var id: Int
    var title: String
    var place: String
    var image: Image
}

let beauSoleil = Spot(id:0, title: "Passage BeauSoleil", place: "Capbreton", image:Image("passageSoleil"))
let jolieVague = Spot(id:1, title: "Jolie Vague", place: "Biarritz", image: Image("jolieVague"))

let spotList = [beauSoleil, jolieVague]
