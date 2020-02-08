//
//  Extensions.swift
//  SathornServices
//
//  Created by Stephen Bodnar on 1/30/20.
//  Copyright © 2020 Stephen Bodnar. All rights reserved.
//

import Foundation

extension Optional where Wrapped == Data {
    
    @discardableResult
    func decoded<T: Decodable>(to type: T.Type, completion: (Result<T, Error>) -> Void) -> Data? {
        let decoder = JSONDecoder()
        do {
            let decoded: T = try decoder.decode(type, from: self!)
            completion(.success(decoded))
        } catch let error {
            print("error decoding:: \(error)")
            completion(.failure(error))
        }
        
        return self
    }
}

extension String {
    var urlQuerySafe: String {
        let allowedCharacters = self.addingPercentEncoding(withAllowedCharacters: CharacterSet(charactersIn: "':=\"#%/<>?@\\^`{|} ").inverted) ?? ""
        return allowedCharacters
    }
}
