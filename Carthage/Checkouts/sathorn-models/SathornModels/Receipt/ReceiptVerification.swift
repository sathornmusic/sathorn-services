//
//  ReceiptVerification.swift
//  Models
//
//  Created by Stephen Bodnar on 1/31/20.
//  Copyright © 2020 Stephen Bodnar. All rights reserved.
//

import Foundation

public struct ReceiptVerification: Decodable {
    public var environment: String
    public var receipt: Receipt
    
    static let productId: String = "stephenbodnar.Siam.sathornpremium"
    
    public func isVerified() -> Bool {
        if let inAppPurchases = receipt.in_app {
            for purchase in inAppPurchases {
                return purchase.productID == ReceiptVerification.productId
            }
        }
        if let originalPurahcaseDateAsInt = Int(receipt.original_purchase_date_ms) {
            return originalPurahcaseDateAsInt < 1558085648000
        }
        
        return false
    }
}
