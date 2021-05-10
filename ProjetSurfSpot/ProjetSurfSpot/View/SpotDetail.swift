//
//  SpotDetail.swift
//  ProjetSurfSpot
//
//  Created by Manon Coulombe on 04/05/2021.
//

import SwiftUI

struct SpotDetail: View {
    var spot: Spot
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading) {
                Text(spot.fields.title)
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(Color.black)
                
                Text(spot.fields.place)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                ImageView(url: spot.fields.image.first!.url)
                    .frame(width: 300, height: 300, alignment: .center)
                    .padding()
                
                Divider()

                Text("About \(spot.fields.title)")
                    .font(.title2)
                Text("Description")
            }
            .padding()
        }
        .navigationTitle(spot.fields.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SpotDetail_Previews: PreviewProvider {
    static var previews: some View {
        SpotDetail(spot: spotList[0])
    }
}
