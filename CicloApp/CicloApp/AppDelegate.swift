//
//  AppDelegate.swift
//  CicloApp
//
//  Created by Daniella Garcia Freyre on 06/04/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        print("Se inicio mi aplicacion")
        return true
    }
    //funcion que pasa a inactivo por cerrarla
    func applicationWillResignActive(_ application: UIApplication) {
        print("La App va a renucniar a modo activo")
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("La app ya entro en modo background")
    }
    
    func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
        print("Memory Warnig, el cual genera un aiso de memoria")
    }
    func applicationWillEnterForeground(_ application: UIApplication) {
        print("La app paso de modo background a modo activo")
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        print("La app ya se hizo activa?")
    }



}

