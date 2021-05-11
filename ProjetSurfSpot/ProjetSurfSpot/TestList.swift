//
//  TestList.swift
//  ProjetSurfSpot
//
//  Created by Manon Coulombe on 10/05/2021.
//

import SwiftUI

struct TestList: View {
    @State var spot: Record?
    
    var body: some View {
        Text("Hello Wolrd")
        List {
            //Text("Coucou")
            ForEach(spot?.records ?? [], id: \.self) { Spot in
//                Text(Spot.fields.title)
                Text("coucou again")
            }
        }
        .onAppear {
            print("on appear")
            Api().getSpots { response in
                print("ou sont les spots?")
//                print(spots)
                spot = response
            }
        }
        
    }
}
    //            ForEach(spot?.records ?? [], id: \.self) { spot in
    //                HStack {
    //                    ImageView(url: spot.fields.image.first!.url)
    //                        .clipShape(Circle())
    //                        .frame(width: 50, height: 50)
    //                    Text(spot.fields.title)
    //                    Spacer()
    //                }
    //            }
    //            .onAppear {
    //                Api().getSpots { (spots) in
    //                    spot = spots
    //                }
    //                print("hello")
    //                print(spot)
    //            }
    //            }
    //        }
    //    }
    
    struct TestList_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                TestList()
            }
        }
    }
