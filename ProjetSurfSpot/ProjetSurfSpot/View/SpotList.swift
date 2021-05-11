//
//  SpotList.swift
//  ProjetSurfSpot
//
//  Created by Manon Coulombe on 04/05/2021.
//

//import SwiftUI
//
//struct SpotList: View {
//    @State var spot: Record
//
//    var body: some View {
//        
//        HStack {
//            List(spot) { spot in
////                NavigationLink(destination: SpotDetail(spot: spotList)) {
//                    //SpotRow(spot: spotList)
//                    HStack {
//                        ImageView(url: spot.records[0].fields.image.first!.url)
//                            .clipShape(Circle())
//                            .frame(width: 50, height: 50)
//                        Text(spot.records[0].fields.title)
//                        Spacer()
//                    }
//                }
//            }
//            .onAppear {
//                Api().getSpots { (spots) in
//                    self.spot = spots
//                }
//            }
//            //.navigationTitle("Surf Spots")
//        //}
//    }
//}
//
//struct SpotList_Previews: PreviewProvider {
//    static var previews: some View {
//        SpotList()
//    }
//}
