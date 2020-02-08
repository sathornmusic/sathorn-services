//
//  Artist.swift
//  Siam
//
//  Created by Stephen Bodnar on 13/10/2561 BE.
//  Copyright © 2561 Stephen Bodnar. All rights reserved.
//

import UIKit
import MediaPlayer

public class Artist {
    public var mediaItem: MPMediaItem
    public var songCount: Int
    public var collection: MPMediaItemCollection
    
    public init(mediaItem: MPMediaItem, collection: MPMediaItemCollection) {
        self.mediaItem = mediaItem
        self.songCount = collection.items.count
        self.collection = collection
    }
    
}


