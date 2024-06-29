//
//  SettingsHeaderView.swift
//  SwiftUITestApp
//
//  Created by Александр Коробицын on 30.06.2024.
//

import Foundation
import SwiftUI

struct SettingsHeaderView: View {
    
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        
        let corners = RectangleCornerRadii(TL: 40, BL: 10, BT: 10, TT: 40)
        
        UnevenRoundedRectangle(cornerRadii: corners, style: .continuous)
            .customStyle()
            .frame(width: width, height: height)
        
    }
}

#Preview {
    SettingsHeaderView(width: 320, height: 160)
}
