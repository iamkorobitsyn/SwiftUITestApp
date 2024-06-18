//
//  SwiftUITestAppApp.swift
//  SwiftUITestApp
//
//  Created by Александр Коробицын on 05.06.2024.
//

import SwiftUI
import SwiftData

@main
struct MyApp: App {
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.darkGray
        
        appearance.stackedLayoutAppearance.selected.iconColor = UIColor.orange
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.orange]
        appearance.stackedLayoutAppearance.normal.iconColor = .white
        appearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
   
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}
