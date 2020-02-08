//
//  File.swift
//  Siam
//
//  Created by Stephen Bodnar on 7/12/2561 BE.
//  Copyright © 2561 Stephen Bodnar. All rights reserved.
//

import UIKit
import MediaPlayer

public class Album {
    public var name: String
    public var mediaItem: MPMediaItem
    public var mediaItemCollection: MPMediaItemCollection?
    
    public init(name: String, mediaItem: MPMediaItem) {
        self.name = name
        self.mediaItem = mediaItem
    }
    
    public var songs: [MPMediaItem] {
        let albumQuery = MPMediaQuery.albums()
        let albumPredicate = MPMediaPropertyPredicate(value: name, forProperty: MPMediaItemPropertyAlbumTitle, comparisonType: MPMediaPredicateComparison.equalTo)
        albumQuery.addFilterPredicate(albumPredicate)
        
        if let allCollections = albumQuery.collections {
            for album in allCollections {
                if let albumArtist = album.representativeItem?.albumArtist, let selectedAlbumArtist = mediaItem.albumArtist {
                    if albumArtist == selectedAlbumArtist {
                        return album.items
                    }
                }
            }
        }
        return albumQuery.items ?? []
    }
}

