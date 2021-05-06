//
//  test.swift
//  ProjetSurfSpot
//
//  Created by Manon Coulombe on 05/05/2021.
//

import SwiftUI
import URLImage
import Combine


struct ImageView : View {

    init(url: String) {
        if let trueUrl = URL(string: url) {
            remoteImage = RemoteImage(url: trueUrl)
            remoteImage.load()
        }
        else {
            remoteImage = RemoteImage(url: URL(string: "https://dl.airtable.com/e3QoP3cFSyykZJOvWGIy_cesar-couto-477018-unsplash%20(1).jpg")!)
        }
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
                        .resizable()
                case .failure:
                    Text("Failed")
            }
        }
    }

    @ObservedObject private var remoteImage: RemoteImage
}


let url = "https://dl.airtable.com/e3QoP3cFSyykZJOvWGIy_cesar-couto-477018-unsplash%20(1).jpg"


struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(url: url)
            .frame(width: 320.0, height: 320.0)

    }
}
