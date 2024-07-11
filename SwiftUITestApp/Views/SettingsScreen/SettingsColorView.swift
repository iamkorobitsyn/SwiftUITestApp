//
//  SettingsColorView.swift
//  SwiftUITestApp
//
//  Created by Александр Коробицын on 30.06.2024.
//

import Foundation
import SwiftUI

struct SettingsColorView: View {
    
    @State private var sliderValue = 0.0
    
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        
        let corners = RectangleCornerRadii(TL: 10, BL: 40, BT: 40, TT: 10)
        ZStack {
            UnevenRoundedRectangle(cornerRadii: corners, style: .continuous)
                .customStyle()
                .frame(width: width, height: height)
            VStack(spacing: 20) {
                Slider(value: $sliderValue)
                    .tint(Color(UIColor.darkGray))
                Slider(value: $sliderValue)
                    .tint(Color(UIColor.darkGray))
                Slider(value: $sliderValue)
                    .tint(Color(UIColor.darkGray))
            }
            .frame(width: 200)
        }
        
    }
}

#Preview {
    SettingsColorView(width: 320, height: 220)
}
