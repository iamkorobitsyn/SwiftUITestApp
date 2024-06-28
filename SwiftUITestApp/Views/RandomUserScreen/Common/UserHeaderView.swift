//
//  UserHeaderView.swift
//  SwiftUITestApp
//
//  Created by Александр Коробицын on 28.06.2024.
//

import Foundation
import SwiftUI


struct UserHeaderView: View {
    
    var body: some View {
        
        let corners = RectangleCornerRadii(TL: 40, BL: 10, BT: 10, TT: 40)
        
        UnevenRoundedRectangle(cornerRadii: corners,
                               style: .continuous)
            .customStyle()
    }
}
