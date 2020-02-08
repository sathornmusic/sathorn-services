//
//  SathornPlaylist.swift
//  Models
//
//  Created by Stephen Bodnar on 1/29/20.
//  Copyright © 2020 Stephen Bodnar. All rights reserved.
//

import Foundation

public class SathornPlaylist: Decodable {
    public var id: Int
    public var appleCloudID: String
    public var name: String
    public var isActivelyShared: Bool = true
    public var genre: String
    public var creatorName: String
    
    public var imageUrl: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case appleCloudID = "apple_global_cloud_id"
        case name = "name"
        case isActivelyShared = "is_actively_shared"
        case genre = "genre"
        case creatorName = "creator_name"
        case imageUrl = "imageUrl"
    }
}
