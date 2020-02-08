//
//  SectionedListData.swift
//  Models
//
//  Created by Stephen Bodnar on 1/29/20.
//  Copyright © 2020 Stephen Bodnar. All rights reserved.
//

import Foundation
import MediaPlayer

public typealias PlaylistDiscoveryData = DecodableSectionedListData<SathornPlaylist>

// generic sectioned list with decdable items. Mostly used for sathorn's own API for homogeneous data lists
public class DecodableSectionedListData<T: Decodable>: Decodable {
    public var title: String
    public var items: [T]
    
    public init(title: String, items: [T]) {
        self.title = title
        self.items = items
    }
}
