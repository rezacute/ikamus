//
//  Word.swift
//  NeoIkamus
//
//  Created by Syah Riza on 2/8/15.
//  Copyright (c) 2015 Duren. All rights reserved.
//

import Realm

class Word: RLMObject {
    dynamic var id = 0
    dynamic var token = ""
    dynamic var translation = ""
    dynamic var type = ""
    
    override class func primaryKey() -> String {
        return "id"
    }
    
}
