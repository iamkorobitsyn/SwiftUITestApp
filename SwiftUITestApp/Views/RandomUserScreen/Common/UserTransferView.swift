//
//  UserTransferView.swift
//  SwiftUITestApp
//
//  Created by Александр Коробицын on 28.06.2024.
//

import Foundation
import SwiftUI

struct UserTransferView: View {
    
    var body: some View {
        
        let corners = RectangleCornerRadii(TL: 10, BL: 20, BT: 10, TT: 10)
        
        UnevenRoundedRectangle(cornerRadii: corners, style: .continuous)
            .customStyle()
    }
}