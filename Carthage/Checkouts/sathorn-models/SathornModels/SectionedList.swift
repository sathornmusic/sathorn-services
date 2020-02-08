//
//  SectionedList.swift
//  Models
//
//  Created by Stephen Bodnar on 2/1/20.
//  Copyright © 2020 Stephen Bodnar. All rights reserved.
//

import Foundation

public typealias ArtistData = SectionedList

public typealias SearchResultsData = SectionedList

public typealias AlbumListData = SectionedList

// generic sectioned list with heterogeneous data
public struct SectionedList {
    public var title: String
    public var items: [Any]
    
    public init(title: String, items: [Any]) {
        self.title = title
        self.items = items
    }
}
