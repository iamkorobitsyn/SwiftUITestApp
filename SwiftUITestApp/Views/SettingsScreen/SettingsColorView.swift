//
//  SettingsColorView.swift
//  SwiftUITestApp
//
//  Created by Александр Коробицын on 30.06.2024.
//

import Foundation
import SwiftUI

struct SettingsColorView: View {
    
    let width: CGFloat
    let height: CGFloat
    
    @Binding var redValue: Double
    @Binding var greenValue: Double
    @Binding var blueValue: Double
    
    var body: some View {
        
        let corners = RectangleCornerRadii(TL: 10, BL: 40, BT: 40, TT: 10)
        ZStack {
            UnevenRoundedRectangle(cornerRadii: corners, style: .continuous)
                .customStyle()
                .frame(width: width, height: height)
            VStack(spacing: 20) {
                Text("Top color")
                    .font(Font.system(size: 20, weight: .bold))
                    .foregroundStyle(Color(UIColor.darkGray))
                ColorSlider(sliderValue: $redValue, color: .red)
                ColorSlider(sliderValue: $greenValue, color: .green)
                ColorSlider(sliderValue: $blueValue, color: .blue)
                
            }
            .frame(width: 250)
        }
    }
}

struct ColorSlider: View {
    
    @Binding var sliderValue: Double
    let color: Color
    
    var body: some View {
        HStack {
            Slider(value: $sliderValue, in: 0...255)
                .tint(color)
            Text("\(lround(sliderValue))")
                .font(Font.system(size: 15, weight: .medium))
                .foregroundStyle(Color(UIColor.darkGray))
        }
        
    }
}

#Preview {

    SettingsColorView(width: 320, height: 220, redValue: .constant(20), greenValue: .constant(20), blueValue: .constant(20))
}
