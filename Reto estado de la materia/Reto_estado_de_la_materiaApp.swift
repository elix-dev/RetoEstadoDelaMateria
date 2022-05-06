//
//  Reto_estado_de_la_materiaApp.swift
//  Reto estado de la materia
//
//  Created by Elias José Rodriguez on 27/04/22.
//

import SwiftUI
import Firebase
//inicialitzacion de firebase
@main
class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions:
                     [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        return true
      }
    
}


struct Reto_estado_de_la_materiaApp: App {
    //inicialitzacion de firebase
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            InicioView()
        }
    }
}
