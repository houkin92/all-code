//
//  AppDelegate.swift
//  纯代码写
//
//  Created by 方瑾 on 2019/3/29.
//  Copyright © 2019 方瑾. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        //整个程序启动之后，先进到这个方法。优先所有
        //获取屏幕尺寸
        let screen = UIScreen.main.bounds
        //给输出窗口设置尺寸
        self.window = UIWindow.init(frame: screen)
        //实例化初始画面
        let viewController = ViewController()
        //设置初始NavigationController，并将viewController设置为根视图
        let navigationController = UINavigationController(rootViewController: viewController)
        //将输出窗口设置为viewController
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()//设置窗口属性可以访问
        
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

