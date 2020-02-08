//
//  AppConfig.swift
//  Models
//
//  Created by Stephen Bodnar on 1/29/20.
//  Copyright © 2020 Stephen Bodnar. All rights reserved.
//

import Foundation

public class AppConfig: Decodable {
    var id: Int
    public var appleMusicToken: String
    public var lastFmApiKey: String
    public var lastFmSecretKey: String
    public var lastFmUserAgent: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case appleMusicToken = "apple_music_token"
        case lastFmApiKey = "last_fm_api_key"
        case lastFmSecretKey = "last_fm_secret_key"
        case lastFmUserAgent = "last_fm_user_agent"
    }
}
