//
//  SpotRow.swift
//  ProjetSurfSpot
//
//  Created by Manon Coulombe on 04/05/2021.
//

import SwiftUI

struct SpotRow: View {
    var spot: Spot
    
    var body: some View {
        HStack {
//            spot.image
//                .resizable()
//                .clipShape(Circle())
//                .frame(width: 50, height: 50)
            Text(spot.title)
            Spacer()
        }
    }
}

struct SpotRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SpotRow(spot: spotList[0])
            SpotRow(spot: spotList[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    
    }
}
