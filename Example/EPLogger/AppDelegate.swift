//
//  AppDelegate.swift
//  EPLogger
//
//  Created by elon on 08/29/2019.
//  Copyright (c) 2019 elon. All rights reserved.
//

import UIKit
import EPLogger

// If you want to get import once and use it globally
public typealias Log = EPLogger.Log

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Set log level. default is verbose
        Log.congfig(level: .verbose)
        Log.verbose("This is verbose")
        Log.debug("This is debug")
        Log.info("This is info")
        Log.warning("This is warning")
        Log.error("This is error")
        
        print("\n change format")
        Log.congfig(formatType: .short)
        Log.verbose("short")
        
        Log.congfig(formatType: .medium)
        Log.debug("medium")
        
        Log.congfig(formatType: .long)
        Log.info("long")
        
        Log.congfig(formatType: .full)
        Log.warning("full")
       
        Log.congfig(formatType: .short)
        print("\n change log level header")
        Log.congfig(customLevelHeader: [
            .verbose: "VERBOSE",
            .debug: "DEBUG"
        ])
        Log.verbose("This is verbose")
        Log.debug("This is debug")
        Log.info("This is info")
        Log.warning("This is warning")
        Log.error("This is error")
        
        print("\n change separator")
        Log.congfig(separator: ": ")
        Log.info("Hello")
        Log.warning("world!")
        print("")
        
        Log.congfig(
            level: .debug,
            formatType: .medium,
            separator: " -> "
        )
        Log.verbose("This is verbose")
        Log.debug("This is debug")
        Log.info("This is info")
        Log.warning("This is warning")
        Log.error("This is error")
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

