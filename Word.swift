//
//  Word.swift
//  RealmSample
//
//  Created by SuzukiShigeru on 2017/07/07.
//  Copyright © 2017年 Shigeru Suzuki. All rights reserved.
//

import Foundation
import RealmSwift

class Word: Object {
    
// Specify properties to ignore (Realm won't persist these)
    
//  override static func ignoredProperties() -> [String] {
//    return []
//  }
    dynamic var english = ""
    dynamic var japanese = ""
}
