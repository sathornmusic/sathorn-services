//
//  SathornApiKey.swift
//  Siam
//
//  Created by Stephen Bodnar on 7/5/19.
//  Copyright © 2019 Stephen Bodnar. All rights reserved.
//

import Foundation

public class SathornApiKey: Decodable {
    public var accessToken: String
    public var id: Int
    public var platform: String
    public var isValid: Bool
    
    public init(accessToken: String, id: Int, platform: String, isValid: Bool) {
        self.accessToken = accessToken
        self.id = id
        self.platform = platform
        self.isValid = isValid
    }
    
    
}

