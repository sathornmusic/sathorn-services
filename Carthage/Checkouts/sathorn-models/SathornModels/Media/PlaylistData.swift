//
//  PlaylistData.swift
//  Siam
//
//  Created by Stephen Bodnar on 2/1/19.
//  Copyright © 2019 Stephen Bodnar. All rights reserved.
//

import Foundation
import MediaPlayer

// used as the data source for the PlaylistViewController where we list all playlists
public class PlaylistData {
    public var category: String
    public var items: [MPMediaItemCollection]
    
    public init(category: String, items: [MPMediaItemCollection]) {
        self.category = category
        self.items = items
    }
}
