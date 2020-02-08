//
//  ReceiptServices.swift
//  SathornServices
//
//  Created by Stephen Bodnar on 1/31/20.
//  Copyright © 2020 Stephen Bodnar. All rights reserved.
//

import Foundation
import WhiteFlowerFactory
import SathornModels

public class ReceiptServices {
    
    public static let shared: ReceiptServices = ReceiptServices()
    
    public func verifyReceipt(params: [String: Any], completion: @escaping (Result<Bool, Error>) -> Void) {
        let request: WhiteFlowerRequest = WhiteFlowerRequest(method: .post, endPoint: Endpoint.verifyReceipt, params: params, headers: [HTTPHeader(field: HTTPHeaderField.contentType.rawValue, value: HTTPContentType.json.rawValue)])
        WhiteFlower.shared.request(request: request) { response in
            switch response.result {
            case .success(let data):
                data.decoded(to: ReceiptVerification.self) { result in
                    switch result {
                    case .success(let receiptVerification):
                        print("receipt verification is \(receiptVerification)")
                        completion(.success(receiptVerification.isVerified()))
                    case .failure(let error):
                        completion(.failure(error))
                    }
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
