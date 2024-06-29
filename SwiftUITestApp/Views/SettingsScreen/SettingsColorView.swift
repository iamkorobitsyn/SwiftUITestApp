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
    
    var body: some View {
        
        let corners = RectangleCornerRadii(TL: 10, BL: 40, BT: 40, TT: 10)
        
        UnevenRoundedRectangle(cornerRadii: corners, style: .continuous)
            .customStyle()
            .frame(width: width, height: height)
    }
}

#Preview {
    SettingsColorView(width: 320, height: 220)
}
