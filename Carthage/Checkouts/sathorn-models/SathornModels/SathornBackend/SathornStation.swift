//
//  SathornStation.swift
//  Models
//
//  Created by Stephen Bodnar on 1/29/20.
//  Copyright © 2020 Stephen Bodnar. All rights reserved.
//

import Foundation

public typealias SathornStation = String

public typealias StationCategoryData = DecodableSectionedListData<SathornStation>

public class AppStationsResponse: Decodable {
    public var featured: [SathornStation]
    public var categories: [StationCategoryData]
}
