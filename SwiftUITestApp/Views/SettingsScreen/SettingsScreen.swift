//
//  SettingsScreen.swift
//  SwiftUITestApp
//
//  Created by Александр Коробицын on 30.06.2024.
//

import Foundation
import SwiftUI

struct SettingsScreen: View {
    
    let topColor: UIColor
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color(topColor), .white],
                           startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
            
            VStack(spacing: 4) {
                SettingsHeaderView(width: 320, height: 160)
                SettingsColorView(width: 320, height: 220)
            }
        }
    }
}

#Preview {
    SettingsScreen(topColor: UIColor(r: 105, g: 152, b: 185))
}
