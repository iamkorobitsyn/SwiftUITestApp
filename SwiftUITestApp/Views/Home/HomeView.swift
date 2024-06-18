//
//  ContentView.swift
//  SwiftUITestApp
//
//  Created by Александр Коробицын on 05.06.2024.
//

import SwiftUI

struct HomeView: View {
    
    @State private var selected = 0
    
    var body: some View {
 
        TabView(selection: $selected) {
            RandomizerView()
                .font(.system(size: 30))
                .tabItem {
                    
                    Image(selected == 0 ? "RandomizerScreenIconOrange" : "RandomizerScreenIconWhite")
                    Text(selected == 0 ? "___" : "_")
                }
                .tag(0)
            
            Text("PERSON LIST")
                .tabItem {
                    Image(selected == 1 ? "PersonListScreenIconOrange" : "PersonListScreenIconWhite")
                    Text(selected == 1 ? "___" : "_")
                }
                .tag(1)
        }
    }
}

#Preview {
    HomeView()
}
