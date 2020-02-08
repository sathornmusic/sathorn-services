//
//  SathornUser.swift
//  Siam
//
//  Created by Stephen Bodnar on 6/29/19.
//  Copyright © 2019 Stephen Bodnar. All rights reserved.
//

import Foundation

public class SathornUser: Decodable {
    public var email: String
    public var id: Int
    
    public var createdAt: String?
    public var updatedAt: String?
    
    public var appleId: String?
    public var isPremium = false
    
    public var apiKey: SathornApiKey?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case email = "email"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case appleId = "apple_id"
        case isPremium = "is_premium"
        case apiKey = "api_key"
    }
    
    public init(email: String, id: Int) {
        self.email = email
        self.id = id
    }
}

