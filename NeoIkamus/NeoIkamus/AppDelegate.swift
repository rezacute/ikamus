//
//  AppDelegate.swift
//  NeoIkamus
//
//  Created by Syah Riza on 2/7/15.
//  Copyright (c) 2015 Duren. All rights reserved.
//

import UIKit
import Realm

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        Kii.beginWithID("2d009c6a", andKey: "e5bdf5b06145ffe43a8bc06965af5575", andSite: KiiSite.SG)
        KiiAnalytics.beginWithID("2d009c6a", andKey: "e5bdf5b06145ffe43a8bc06965af5575", andSite: KiiAnalyticsSite.SG)
        if(User.allObjects().count == 0){
            let userFields = KiiUserFields()
            KiiUser.registerAsPseudoUserWithUserFields(userFields, block: { (loggedUser:KiiUser!, error:NSError!) -> Void in
                if(error==nil){
                    
                    let user = User()
                    let realm = RLMRealm.defaultRealm()
                    user.accessToken = loggedUser.accessToken
                    user.userID = loggedUser.userID
                    
                    realm.beginWriteTransaction()
                    realm.addObject(user)
                    realm.commitWriteTransaction()
                    KiiAnalytics.trackEvent("310" , withExtras: ["_type":"AppOpen","UserId":user.userID])
                    
                }
            })
            
        }else{
            let user = User.allObjects()[0] as User
            
            KiiUser.authenticateWithToken(user.accessToken, andBlock: { (kiiUser:KiiUser!, error:NSError!) -> Void in
                
                if(error == nil){
                    KiiAnalytics.trackEvent("310" , withExtras: ["_type":"AppOpen","UserId":user.userID])
                }
                
            })
        }
        return true
    }
    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}

