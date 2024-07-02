//
//  ContentView.swift
//  SwiftUITestApp
//
//  Created by Александр Коробицын on 05.06.2024.
//

import SwiftUI

import SwiftUI

struct HomeView: View {
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            RandomUserScreenMainView()
            
                .tabItem {
                        Image("RandomizerScreenIcon")
                            .renderingMode(.template)
                }
                .tag(0)

            Text("PERSON LIST")
                .tabItem {
                        Image("PersonListScreenIcon")
                            .renderingMode(.template)
                }
                .tag(1)
        }
        .accentColor(.orange)
    }
}

#Preview {
    HomeView()
}
