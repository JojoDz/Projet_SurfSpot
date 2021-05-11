//
//  SpotDetail.swift
//  ProjetSurfSpot
//
//  Created by Manon Coulombe on 04/05/2021.
//

import SwiftUI

struct SpotDetail: View {
    @State var spot: Record
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading) {
                Text(spot.records[0].fields.title)
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(Color.black)
                
                Text(spot.records[0].fields.place)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                ImageView(url: spot.records[0].fields.image.first!.url)
                    .frame(width: 300, height: 300, alignment: .center)
                    .padding()
                
                Divider()

                Text("About \(spot.records[0].fields.title)")
                    .font(.title2)
                Text("Description")
            }
            .padding()
        }
        .navigationTitle(spot.records[0].fields.title)
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            Api().getSpots { (response) in
            self.spot = response
            }
        }
    }
}


//struct SpotDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        SpotDetail(spot: Spot)
//    }
//}
