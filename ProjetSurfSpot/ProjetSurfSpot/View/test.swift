//
//  test.swift
//  ProjetSurfSpot
//
//  Created by Manon Coulombe on 05/05/2021.
//

import SwiftUI
import URLImage

struct URLImage : View {

    init(url: URL) {
        remoteImage = RemoteImage(url: url)
        remoteImage.load()
    }

    var body: some View {
        ZStack {
            switch remoteImage.loadingState {
                case .initial:
                    EmptyView()
                case .inProgress:
                    Text("Loading")
                case .success(let image):
                    image
                case .failure:
                    Text("Failed")
            }
        }
    }

    @ObservedObject private var remoteImage: RemoteImage
}


let url = URL(string: "https://dl.airtable.com/ZuXJZ2NnTF40kCdBfTld_thomas-ashlock-64485-unsplash.jpg")!
let view = URLImage(url: url)
    .frame(width: 320.0, height: 320.0)

