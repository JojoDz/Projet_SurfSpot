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
    var country: String
    var image: Image
}
