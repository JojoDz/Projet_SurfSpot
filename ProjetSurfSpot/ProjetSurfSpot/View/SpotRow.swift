//
//  SpotRow.swift
//  ProjetSurfSpot
//
//  Created by Manon Coulombe on 04/05/2021.
//

import SwiftUI

//struct SpotRow: View {
//
//    @State var response: Record?
//    var spot: Spot
//
//    var body: some View {
//        HStack {
//            ImageView(url: (response?.records[0].fields.image.first!.url)!)
//                .clipShape(Circle())
//                .frame(width: 50, height: 50)
//            Text((response?.records[0].fields.place)!)
//            Spacer()
//        }
//        .onAppear {
//            Api().getSpots { spots in
//                response = spots
//            }
//       }
//    }
//}
//
//struct SpotRow_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            SpotRow(spot: )
//            SpotRow()
//        }
//        .previewLayout(.fixed(width: 300, height: 70))
//
//    }
//}
