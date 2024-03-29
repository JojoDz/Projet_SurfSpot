//
//  DecodeURL.swift
//  ProjetSurfSpot
//
//  Created by Manon Coulombe on 06/05/2021.
//

import Foundation
import SwiftUI
import URLImage
import Combine


final class RemoteImage : ObservableObject {

    enum LoadingState {

        case initial

        case inProgress

        case success(_ image: Image)

        case failure
    }

    @Published var loadingState: LoadingState = .initial

    let url: URL

    init(url: URL) {
        self.url = url
    }

    func load() {
        loadingState = .inProgress

        cancellable = URLSession(configuration: .default)
            .dataTaskPublisher(for: url)
            .map {
                guard let value = UIImage(data: $0.data) else {
                    return .failure
                }

                return .success(Image(uiImage: value))
            }
            .catch { _ in
                Just(.failure)
            }
            .receive(on: RunLoop.main)
            .assign(to: \.loadingState, on: self)
    }

    private var cancellable: AnyCancellable?
}
