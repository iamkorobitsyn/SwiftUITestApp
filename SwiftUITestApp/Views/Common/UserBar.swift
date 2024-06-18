//
//  UserDescriptionBar.swift
//  SwiftUITestApp
//
//  Created by Александр Коробицын on 18.06.2024.
//

import Foundation
import SwiftUI

struct UserBar: View {
    
    var body: some View {
        VStack {
            UserHeaderView()
            UserDescriptionView()
            UserTransferView()
        }
    }
}

struct UserHeaderView: View {
    
    var body: some View {
        let corners = RectangleCornerRadii(topLeading: 40,
                                           bottomLeading: 10,
                                           bottomTrailing: 10,
                                           topTrailing: 40)
        UnevenRoundedRectangle(cornerRadii: corners, style: .continuous)
            .fill(.white)
            .opacity(0.5)
            .frame(width: 320, height: 160)
            
            .overlay(
                UnevenRoundedRectangle(cornerRadii: corners)
                    .stroke(Color(UIColor.darkGray), lineWidth: 0.3)
            )
    }
}

struct UserDescriptionView: View {
    
    var body: some View {
        let corners = RectangleCornerRadii(topLeading: 10,
                                           bottomLeading: 40,
                                           bottomTrailing: 40,
                                           topTrailing: 10)
        UnevenRoundedRectangle(cornerRadii: corners, style: .continuous)
            .fill(.white)
            .opacity(0.5)
            .frame(width: 320, height: 160)
            
            .overlay(
                UnevenRoundedRectangle(cornerRadii: corners)
                    .stroke(Color(UIColor.darkGray), lineWidth: 0.3)
            )
    }
}

struct UserTransferView: View {
    
    var body: some View {
        Text("UserTransferView")
    }
}

#Preview {
    UserBar()
}
