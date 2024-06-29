//
//  SettingsButton.swift
//  SwiftUITestApp
//
//  Created by Александр Коробицын on 28.06.2024.
//

import Foundation
import SwiftUI

struct InteractionButton: View {
    
    let action: () -> Void
    let iconName: String
    let iconColor: Color
    
    var body: some View {
        Button(action: action) {
            
            ZStack {
                Circle()
                    .customStyle()
                Image(iconName)
                    .renderingMode(.template)
                    .foregroundStyle(iconColor)
            }
            
        }.frame(width: 50, height: 50)
    }
}

#Preview {
    InteractionButton(action: {}, iconName: "settingsIcon", iconColor: .blue)
}
