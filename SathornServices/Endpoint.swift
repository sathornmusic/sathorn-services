//
//  Endpoint.swift
//  SathornServices
//
//  Created by Stephen Bodnar on 1/30/20.
//  Copyright © 2020 Stephen Bodnar. All rights reserved.
//

import Foundation
import WhiteFlowerFactory

enum Endpoint: Provider {
    var baseURL: String {
        return "https://fast-everglades-15521.herokuapp.com/"
    }
    
    static var name: String {
        return "Endpoint"
    }
    
    // sathorn's own backend
    case getAppInfo
    case verifyReceipt
    case discover
    case discoverByGenre(String) // name of genre
    case addDownload
    case shareToDiscover
    case logError
    case getStationIds
    case signup
    case login
    case createFolder
    case getAllAbumFolders
    case synchronizePlaylistFolders
    
    private var lastFmBaseUrl: String { return "https://ws.audioscrobbler.com/2.0/" }
    
    var path: String {
        switch self {
        case .getAppInfo:
            return "\(baseURL)app_config"
        case .verifyReceipt:
            return "\(baseURL)verifyReceipt"
        case .discover:
            return "\(baseURL)discover"
        case .addDownload: return "\(baseURL)playlists/addDownload"
        case .shareToDiscover: return "\(baseURL)sharePlaylist"
        case .discoverByGenre(let genre):
            print("by genre is \(baseURL)playlists/\(genre.urlQuerySafe)")
            return "\(baseURL)playlists/\(genre.urlQuerySafe)"
        case .logError:
            return "\(baseURL)logError"
        case .getStationIds:
            return "\(baseURL)stations"
        case .signup:
            return "\(baseURL)user/create"
        case .login:
            return "\(baseURL)user/login"
        case .createFolder:
            return "\(baseURL)folders/create"
        case .getAllAbumFolders:
            return "\(baseURL)folders/me/albums"
        case .synchronizePlaylistFolders:
            return "\(baseURL)folders/me/playlists/synchronize"
        }
    }
}
