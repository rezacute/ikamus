//
//  NeoIkamusTests.swift
//  NeoIkamusTests
//
//  Created by Syah Riza on 2/7/15.
//  Copyright (c) 2015 Duren. All rights reserved.
//

import UIKit
import XCTest
import Realm

class NeoIkamusTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
//    func testExample() {
//       let id_en_path = NSBundle(forClass: self.classForCoder).pathForResource("id-en", ofType: "json")
//       let en_id_path = NSBundle(forClass: self.classForCoder).pathForResource("en-id", ofType: "json")
//       let jsonData = NSData(contentsOfFile: en_id_path!)
//       var error: NSError?
//       
//        var array: NSArray = NSJSONSerialization.JSONObjectWithData(jsonData!, options: NSJSONReadingOptions.AllowFragments, error: &error) as NSArray
//        
//        var i = 0
//        let realm = RLMRealm.inMemoryRealmWithIdentifier("inMemory")
//        realm.beginWriteTransaction()
//        for obj in array as [NSDictionary]{
//            var word = Word()
//            word.id = i;
//            word.token = obj["word"] as String
//            word.translation = obj["translation"] as String
//            
//            realm.addObject(word)
//            i++
//        }
//        
//        realm.commitWriteTransaction()
//        
//        
//        realm.writeCopyToPath("/Users/syahriza/Documents/private/en_id.realm", error: &error)
//       
//        
//    }

    
}
