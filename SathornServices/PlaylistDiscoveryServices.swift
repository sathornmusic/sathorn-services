//
//  PlaylistDiscoveryServices.swift
//  SathornServices
//
//  Created by Stephen Bodnar on 1/29/20.
//  Copyright © 2020 Stephen Bodnar. All rights reserved.
//

import Foundation
import WhiteFlowerFactory
import SathornModels
import MediaPlayer

public class PlaylistDiscoveryServices {
    
    public static let shared = PlaylistDiscoveryServices()
    
    public init() { }
    
    // MARK: - Public
    public func getDiscoveryFeed(completion: @escaping (Result<[PlaylistDiscoveryData], Error>) -> Void) {
        let request: WhiteFlowerRequest = WhiteFlowerRequest(method: .get, endPoint: Endpoint.discover)
        getDiscovery(request: request, completion: completion)
    }
    
    public func getDiscoverByGenre(genre: String, completion: @escaping (Result<[PlaylistDiscoveryData], Error>) -> Void) {
        let request: WhiteFlowerRequest = WhiteFlowerRequest(method: .get, endPoint: Endpoint.discoverByGenre(genre))
        getDiscovery(request: request, completion: completion)
    }
    
    public func shareToDiscover(params: [String: Any], completion: @escaping (Result<Bool, Error>) -> Void) {
        let request: WhiteFlowerRequest = WhiteFlowerRequest(method: .post, endPoint: Endpoint.shareToDiscover, params: params)
        WhiteFlower.shared.request(request: request) { response in
            switch  response.result {
            case .success: completion(.success(true))
            case .failure(let error): completion(.failure(error))
            }
        }
    }
    
    public func addDownload(parameters: [String: Any]) {
        let request: WhiteFlowerRequest = WhiteFlowerRequest(method: .post, endPoint: Endpoint.addDownload, params: parameters, headers: nil)
        WhiteFlower.shared.request(request: request) { response in
        }
    }
    
    // MARK: Private
    private func getDiscovery(request: WhiteFlowerRequest, completion: @escaping (Result<[PlaylistDiscoveryData], Error>) -> Void) {
        WhiteFlower.shared.get(request: request) { response in
            switch response.result {
            case .success(let data):
                data.decoded(to: [PlaylistDiscoveryData].self, completion: { result in
                    switch result {
                    case .success(let playlists): (completion(.success(playlists)))
                    case .failure(let error): completion(.failure(error))
                    }
                })
            case .failure(let error): completion(.failure(error))
            }
        }
    }
    
}
