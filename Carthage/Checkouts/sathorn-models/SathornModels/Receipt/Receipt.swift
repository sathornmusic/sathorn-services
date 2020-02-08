//
//  Receipt.swift
//  Siam
//
//  Created by Stephen Bodnar on 01/31/20.
//  Copyright © 2020 Stephen Bodnar. All rights reserved.
//
import Foundation

public struct Receipt: Decodable {
    public var request_date_ms: String
    public var original_purchase_date_ms: String
    public var in_app: [InAppPurchaseReceipt]?
    
    public var receipt_creation_date: String
    public var application_version: String
    public var download_id: Int
    public var bundle_id: String
    
    public var original_purchase_date: String
    public var receipt_type: String
    public var original_application_version: String
    
}
