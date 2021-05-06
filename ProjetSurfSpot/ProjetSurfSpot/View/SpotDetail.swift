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
                Text(spot.fields.title.first ?? "Title")
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(Color.black)
                
                HStack {
                    Text(spot.fields.place)
                        .font(.subheadline)
                    Spacer()
//                    Text(spot.country)
//                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
//                ImageView(url: spot.image)
//                    .frame(width: 300, height: 300, alignment: .center)
//                    .padding()
                
                Divider()

                Text("About \(spot.fields.title.first ?? "Title")")
                    .font(.title2)
                Text("Description")
            }
            .padding()
        }
        .navigationTitle(spot.fields.title.first ?? "Title")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SpotDetail_Previews: PreviewProvider {
    static var previews: some View {
        SpotDetail(spot: spotList[0])
    }
}
