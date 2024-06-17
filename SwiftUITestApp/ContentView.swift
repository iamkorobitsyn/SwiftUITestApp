//
//  ContentView.swift
//  SwiftUITestApp
//
//  Created by Александр Коробицын on 05.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selected = 0
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.darkGray
        
        appearance.stackedLayoutAppearance.selected.iconColor = UIColor.orange
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.orange]
        appearance.stackedLayoutAppearance.normal.iconColor = .systemGray4
        appearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.systemGray4]
        
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }

    var body: some View {

            
        TabView(selection: $selected) {
            Text("FirstView")
                .font(.system(size: 30))
                .tabItem {
                    
                    Image("RandomizerViewIcon")
                        .frame(alignment: .center)
                    Text(selected == 0 ? "___" : "_")   
                }
                .tag(0)
            
            Text("SecondView")
                .tabItem {
                    Image("PersonListViewIcon")
                        .frame(alignment: .center)
                    Text(selected == 1 ? "___" : "_")
                }
                .tag(1)
        }
    }
}

//struct MainScreen: View {
//    
//    var body: some View {
//        LinearGradient(colors: [.red, .green], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
//    }
//}

#Preview {
    ContentView()
}
