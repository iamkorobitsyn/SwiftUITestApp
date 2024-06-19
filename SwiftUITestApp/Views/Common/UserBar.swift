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
        VStack(spacing: 4) {
            UserHeaderView()
            UserDescriptionView()
            UserTransferView()
        }
    }
}

//MARK: - Views

struct UserHeaderView: View {
    
    var body: some View {
        UnevenRoundedRectangle()
            .bordered(corners: [40, 10, 10, 40])
            .frame(width: 320, height: 160)
    }
}

struct UserDescriptionView: View {
    
    var body: some View {
       UnevenRoundedRectangle()
            .bordered(corners: [10, 40, 10, 10])
            .frame(width: 320, height: 160)
    }
}

struct UserTransferView: View {
    
    var body: some View {
        
        UnevenRoundedRectangle()
            .bordered(corners: [10, 20, 10, 10])
            .frame(width: 200, height: 50)
            .padding(.trailing, -120)
    }
}

//MARK: - Extension

extension UnevenRoundedRectangle {
    
    func bordered(corners: [CGFloat]) -> some View {
        ModifiedContent(content: self, modifier: Mod(corners: corners))
    }
}

struct Mod: ViewModifier {
    let corners: [CGFloat]
    func body(content: Content) -> some View {
        UnevenRoundedRectangle(cornerRadii: 
        RectangleCornerRadii(topLeading: corners[0],
                             bottomLeading: corners[1],
                             bottomTrailing: corners[2],
                             topTrailing: corners[3]), style: .continuous)
        .fill(.white)
        .opacity(0.4)
        .overlay(
            UnevenRoundedRectangle(cornerRadii:
            RectangleCornerRadii(topLeading: corners[0],
                                 bottomLeading: corners[1],
                                 bottomTrailing: corners[2],
                                 topTrailing: corners[3]), style: .continuous)
                            .stroke(Color(UIColor.lightGray), lineWidth: 0.3)
        )
    }
}

#Preview {
    UserBar()
}
