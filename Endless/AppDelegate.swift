//
//  AppDelegate.swift
//  Endless
//
//  Created by Nathan on 10/30/16.
//  Copyright © 2016 Nathan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var main = MainGame()
    var view = GameViewController()
    var Temp = 0
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        main.load()
        return true
}

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
        main.active = 0
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        main.active = 0
        PlistManager.sharedInstance.saveValue(value: main.Log as AnyObject, forKey: "Log")
        PlistManager.sharedInstance.saveValue(value: main.Stone as AnyObject, forKey: "Stone")
        PlistManager.sharedInstance.saveValue(value: main.Plank as AnyObject, forKey: "Board")
        PlistManager.sharedInstance.saveValue(value: main.Charcoal as AnyObject, forKey: "Charcoal")
        PlistManager.sharedInstance.saveValue(value: main.Coal as AnyObject, forKey: "Coal")
        PlistManager.sharedInstance.saveValue(value: main.Ore as AnyObject, forKey: "Ore")
        PlistManager.sharedInstance.saveValue(value: main.Iron as AnyObject, forKey: "Iron")
        PlistManager.sharedInstance.saveValue(value: main.Steel as AnyObject, forKey: "Steel")
        PlistManager.sharedInstance.saveValue(value: main.Energy as AnyObject, forKey: "Energy")
        PlistManager.sharedInstance.saveValue(value: main.Sand as AnyObject, forKey: "Sand")
        PlistManager.sharedInstance.saveValue(value: main.Glass as AnyObject, forKey: "Glass")
        PlistManager.sharedInstance.saveValue(value: main.Water as AnyObject, forKey: "Water")
        PlistManager.sharedInstance.saveValue(value: main.Concrete as AnyObject, forKey: "Concrete")
        PlistManager.sharedInstance.saveValue(value: main.Oil as AnyObject, forKey: "CrudeOil")
        PlistManager.sharedInstance.saveValue(value: main.Plastic as AnyObject, forKey: "Plastic")
        PlistManager.sharedInstance.saveValue(value: main.Fiber as AnyObject, forKey: "Fiber")
        
        PlistManager.sharedInstance.saveValue(value: main.LogNum as AnyObject, forKey: "LogNum")
        PlistManager.sharedInstance.saveValue(value: main.StoneNum as AnyObject, forKey: "StoneNum")
        PlistManager.sharedInstance.saveValue(value: main.PlankNum as AnyObject, forKey: "PlankNum")
        PlistManager.sharedInstance.saveValue(value: main.CharcoalNum as AnyObject, forKey: "CharcoalNum")
        PlistManager.sharedInstance.saveValue(value: main.CoalNum as AnyObject, forKey: "CoalNum")
        PlistManager.sharedInstance.saveValue(value: main.OreNum as AnyObject, forKey: "OreNum")
        PlistManager.sharedInstance.saveValue(value: main.IronNum as AnyObject, forKey: "IronNum")
        PlistManager.sharedInstance.saveValue(value: main.SteelNum as AnyObject, forKey: "SteelNum")
        PlistManager.sharedInstance.saveValue(value: main.EnergyNum as AnyObject, forKey: "EnergyNum")
        PlistManager.sharedInstance.saveValue(value: main.SandNum as AnyObject, forKey: "SandNum")
        PlistManager.sharedInstance.saveValue(value: main.GlassNum as AnyObject, forKey: "GlassNum")
        PlistManager.sharedInstance.saveValue(value: main.WaterNum as AnyObject, forKey: "WaterNum")
        PlistManager.sharedInstance.saveValue(value: main.ConcreteNum as AnyObject, forKey: "ConcreteNum")
        PlistManager.sharedInstance.saveValue(value: main.OilNum as AnyObject, forKey: "OilNum")
        PlistManager.sharedInstance.saveValue(value: main.PlasticNum as AnyObject, forKey: "PlasticNum")
        PlistManager.sharedInstance.saveValue(value: main.FiberNum as AnyObject, forKey: "FiberNum")
        
        PlistManager.sharedInstance.saveValue(value: main.win as AnyObject, forKey: "win")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
        main.active = 1
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        main.active = 1
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        main.save()
    }
}

