//
//  AppleMusicCounntry.swift
//  Siam
//
//  Created by Stephen Bodnar on 3/1/19.
//  Copyright © 2019 Stephen Bodnar. All rights reserved.
//

import Foundation

public class AppleMusicCountry {
    
    public var code: String
    public var name: String
    
    public init(code: String, name: String) {
        self.code = code
        self.name = name
    }

    public var displayName: String {
        switch code {
        case "us": return "\(name) 🇺🇸"
        case "tw": return "\(name) 🇹🇼" 
        case "de": return "\(name) 🇩🇪"
        case "kr": return "\(name) 🇰🇷"
        case "th": return "\(name) 🇹🇭"
        case "it": return "\(name) 🇮🇹"
        case "jp": return "\(name) 🇯🇵"
        case "ca": return "\(name) 🇨🇦"
        case "at": return "\(name) 🇦🇹"
        case "ch": return "\(name) 🇨🇭"
        case "cl": return "\(name) 🇨🇱"
        case "co": return "\(name) 🇨🇴"
        case "mu": return "\(name) 🇲🇺"
        case "dk": return "\(name) 🇩🇰"
        case "no": return "\(name) 🇳🇴"
        case "fr": return "\(name) 🇫🇷"
        case "be": return "\(name) 🇧🇪"
        case "ar": return "\(name) 🇦🇷"
        case "au": return "\(name) 🇦🇺"
        case "fi": return "\(name) 🇫🇮"
        case "pl": return "\(name) 🇵🇱"
        case "gb": return "\(name) 🇬🇧"
        case "mx": return "\(name) 🇲🇽"
        case "nz": return "\(name) 🇳🇿"
        case "pt": return "\(name) 🇵🇹"
        case "se": return "\(name) 🇸🇪"
        default:
            return ""
        }
    }
    
    public static var allCountries: [AppleMusicCountry] {
        let all = [AppleMusicCountry(code: "us", name: "United States"), AppleMusicCountry(code: "kr", name: "South Korea"), AppleMusicCountry(code: "de", name: "Germany"), AppleMusicCountry(code: "th", name: "Thailand"), AppleMusicCountry(code: "it", name: "Italy"), AppleMusicCountry(code: "jp", name: "Japan"), AppleMusicCountry(code: "ca", name: "Canada"), AppleMusicCountry(code: "at", name: "Austria"), AppleMusicCountry(code: "ch", name: "Switzerland"), AppleMusicCountry(code: "cl", name: "Chile"), AppleMusicCountry(code: "co", name: "Colombia"), AppleMusicCountry(code: "tw", name: "Republic of China"), AppleMusicCountry(code: "mu", name: "Mauritius"), AppleMusicCountry(code: "dk", name: "Denmark"), AppleMusicCountry(code: "no", name: "Norway"), AppleMusicCountry(code: "fr", name: "France"), AppleMusicCountry(code: "be", name: "Belgium"), AppleMusicCountry(code: "ar", name: "Argentina"), AppleMusicCountry(code: "au", name: "Australia"), AppleMusicCountry(code: "fi", name: "Finland"), AppleMusicCountry(code: "pl", name: "Poland"), AppleMusicCountry(code: "gb", name: "Great Britain"), AppleMusicCountry(code: "mx", name: "Mexico"), AppleMusicCountry(code: "nz", name: "New Zealand"), AppleMusicCountry(code: "pt", name: "Portugal"), AppleMusicCountry(code: "se", name: "Sweden")]
        let sorted = all.sorted(by: { (country1, country2) -> Bool in
            return country1.name < country2.name
        })
        
        let defaultStoreFront =  "us" //AppleMusicUserDefaulsManager.userStoreFront() ?? "us"
        
        return sorted + [AppleMusicCountry(code: defaultStoreFront, name: "My Country")]
    }
}
