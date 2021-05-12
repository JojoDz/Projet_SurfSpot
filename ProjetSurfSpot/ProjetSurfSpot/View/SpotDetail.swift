//
//  SpotDetail.swift
//  ProjetSurfSpot
//
//  Created by Manon Coulombe on 04/05/2021.
//

import SwiftUI

struct SpotDetail: View {
    var spot: Spot
    //init(spot: Spot){self.spot = spot}
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text((spot.fields.place))
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(Color.blue)
                    .frame(alignment: .center)

    
                ImageView(url: (spot.fields.image.first!.url))
                    .frame(width: 300, height: 300, alignment: .center)
                    .padding()
                
                Divider()
                
                Text("Surf Break : \(spot.fields.surfBreak.first!)")
            }
            .padding()
        }
        .navigationTitle((spot.fields.place))
        .navigationBarTitleDisplayMode(.inline)
    }
}


//struct SpotDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        SpotDetail(spot: spot[0])
//    }
//}
