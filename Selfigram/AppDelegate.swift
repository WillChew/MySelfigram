//
//  AppDelegate.swift
//  Selfigram
//
//  Created by Will Chew on 2018-03-06.
//  Copyright © 2018 Will Chew. All rights reserved.
//

import UIKit
import Parse

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Initialize Parse.
        // Replace YOUR_APP_ID and URL_TO_YOUR_PARSE_SERVER with the values you chose when you installed your Parse server.
        let configuration = ParseClientConfiguration { clientConfiguration in
            clientConfiguration.applicationId = "willchew"
            clientConfiguration.server = "https://pure-tor-20462.herokuapp.com/parse"
        }
        Parse.initialize(with: configuration)
        
        let user = PFUser()
        let username = "Will"
        let password = "Chew"
        user.username = username
        user.password = password
        user.signUpInBackground(block: { (success, errror) -> Void in
            if success {
                print("Successfully signed up a user")
            } else {
                PFUser.logInWithUsername(inBackground: username, password: password, block: {(user, error) -> Void in
                    if let user = user {
                        print ("Successfully logged in \(user)")
                    }
                })
            }
        })
        // Override point for customization after application launch.
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}

