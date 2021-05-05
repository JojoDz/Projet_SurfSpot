//
//  ContentView.swift
//  ProjetSurfSpot
//
//  Created by Joanna, Manon and Francelin on 03/05/2021.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        //SpotList()
        SpotDetail(spot: spotList[0])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
