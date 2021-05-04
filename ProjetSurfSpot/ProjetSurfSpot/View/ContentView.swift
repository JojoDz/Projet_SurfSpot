//
//  ContentView.swift
//  ProjetSurfSpot
//
//  Created by Joanna, Manon and Francelin on 03/05/2021.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
            VStack {
                Text("Passage Beausoleil")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(Color.blue)
                    .multilineTextAlignment(.center)
                    .padding()
                Text("Capbreton")
                    .font(.subheadline)
                    .fontWeight(.black)
                    .foregroundColor(Color.blue)
                    .multilineTextAlignment(.center)
                    .padding()
                Image("passageSoleil")
                    .resizable()
                    .scaledToFit()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
