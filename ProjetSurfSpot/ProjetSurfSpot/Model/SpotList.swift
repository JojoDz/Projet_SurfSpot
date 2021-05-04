//
//  SpotList.swift
//  ProjetSurfSpot
//
//  Created by Manon Coulombe on 04/05/2021.
//

import SwiftUI

struct SpotList: View {
    var body: some View {
        List(spotList) { spotList in
            SpotRow(spot: spotList)
        }
    }
}

struct SpotList_Previews: PreviewProvider {
    static var previews: some View {
        SpotList()
    }
}
