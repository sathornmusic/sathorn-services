//
//  AppSetupServices.swift
//  SathornServices
//
//  Created by Stephen Bodnar on 1/29/20.
//  Copyright © 2020 Stephen Bodnar. All rights reserved.
//

import Foundation
import SathornModels
import WhiteFlowerFactory

public class AppSetupServices {
    
    public static let shared = AppSetupServices()
    
    public func getStations(completion: @escaping (Result<AppStationsResponse, Error>) -> Void) {
        let request: WhiteFlowerRequest = WhiteFlowerRequest(method: .get, endPoint: Endpoint.getStationIds)
        WhiteFlower.shared.request(request: request) { response in
            switch response.result {
            case .success(let data):
                data.decoded(to: AppStationsResponse.self, completion: { result in
                    switch result {
                    case .success(let stationsToCache): (completion(.success(stationsToCache)))
                    case .failure(let error): completion(.failure(error))
                    }
                })
            case .failure(let error): completion(.failure(error))
            }
        }
    }
    
    public func getAppConfig(completion: @escaping (Result<AppConfig, Error>) -> Void) {
        let request: WhiteFlowerRequest = WhiteFlowerRequest(method: .get, endPoint: Endpoint.getAppInfo)
        WhiteFlower.shared.request(request: request) { response in
            switch response.result {
            case .success(let data):
                data.decoded(to: AppConfig.self, completion: { result in
                    switch result {
                    case .success(let config): (completion(.success(config)))
                    case .failure(let error): completion(.failure(error))
                    }
                })
            case .failure(let error): completion(.failure(error))
            }
        }
    }
}
