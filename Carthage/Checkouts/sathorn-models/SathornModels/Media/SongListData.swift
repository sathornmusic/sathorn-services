//
//  SongCollectionData.swift
//  Siam
//
//  Created by Stephen Bodnar on 13/10/2561 BE.
//  Copyright © 2561 Stephen Bodnar. All rights reserved.
//

import Foundation
import MediaPlayer

/// used as the data source in the tableview to list all songs
public struct SongListData {
    public var title: String
    public var songs: [MPMediaItem]
    
    public init(title: String, songs: [MPMediaItem]) {
        self.title = title
        self.songs = songs
    }
}
