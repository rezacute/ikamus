//
//  User.swift
//  NeoIkamus
//
//  Created by Syah Riza on 2/7/15.
//  Copyright (c) 2015 Duren. All rights reserved.
//

import Realm

class User: RLMObject {
    dynamic var id = 0
    dynamic var name = ""
    dynamic var accessToken = ""
    dynamic var userID = ""
    
    override class func primaryKey() -> String {
        return "id"
    }

}
