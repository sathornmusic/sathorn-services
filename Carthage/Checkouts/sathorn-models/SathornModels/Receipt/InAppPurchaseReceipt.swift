//
//  InAppPurchaseReceipt.swift
//  Models
//
//  Created by Stephen Bodnar on 1/31/20.
//  Copyright © 2020 Stephen Bodnar. All rights reserved.
//

import Foundation

public struct InAppPurchaseReceipt: Decodable {
    public var quantity: String?
    public var productID: String
    public var transactionID: String
    public var purchaseDate: String
    public var originalPurchaseDate: String
    public var originalPurchaseDateMs: String
    public var expirationDate: String?
    public var isTrialPeriod: String?
    
    /// “0” - Customer has turned off automatic renewal for their subscription
    /// “1” - Subscription will renew at the end of the current subscription period.
   public var autoRenewStatus: Int?
    
    enum CodingKeys: String, CodingKey {
        case quantity = "quantity"
        case productID = "product_id"
        case transactionID = "transaction_id"
        case purchaseDate = "purchase_date"
        case originalPurchaseDate = "original_purchase_date"
        case originalPurchaseDateMs = "original_purchase_date_ms"
        case expirationDate = "expires_date"
        case isTrialPeriod = "is_trial_period"
        case autoRenewStatus = "auto_renew_status"
    }
}
