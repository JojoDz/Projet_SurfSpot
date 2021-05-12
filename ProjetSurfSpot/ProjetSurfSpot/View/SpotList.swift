//
//  SpotList.swift
//  ProjetSurfSpot
//
//  Created by Manon Coulombe on 04/05/2021.
//

import SwiftUI


struct SpotList: View {
    @State var response: Record?
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(response?.records ?? [], id: \.self) { spot in
                    NavigationLink(destination: SpotDetail(spot: spot)) {
                        HStack {
                            ImageView(url: (spot.fields.image.first!.url))
                                .clipShape(Circle())
                                .frame(width: 50, height: 50)
                            Text((spot.fields.place))
                            Spacer()
                        }
                    }
                }
                .navigationTitle("Surf Spots")
            }
            .onAppear {
                Api().getSpots { spots in
                    response = spots
                }
            }
        }
    }
}
    
struct SpotList_Previews: PreviewProvider {
    static var previews: some View {
            SpotList()
    }
}
