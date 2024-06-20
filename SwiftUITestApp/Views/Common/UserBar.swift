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
        
        let corners =
        RectangleCornerRadii(topLeading: 40, bottomLeading: 10,
                             bottomTrailing: 10, topTrailing: 40)
        
        UnevenRoundedRectangle(cornerRadii: corners, style: .continuous)
            .customStyle()
            .frame(width: 320, height: 160)
    }
}

struct UserDescriptionView: View {
    
    var body: some View {
        
        let corners =
        RectangleCornerRadii(topLeading: 10, bottomLeading: 40,
                             bottomTrailing: 10, topTrailing: 10)
        
        UnevenRoundedRectangle(cornerRadii: corners, style: .continuous)
            .customStyle()
            .frame(width: 320, height: 160)
    }
}

struct UserTransferView: View {
    
    var body: some View {
        
        let corners =
        RectangleCornerRadii(topLeading: 10, bottomLeading: 20,
                             bottomTrailing: 10, topTrailing: 10)
        
        UnevenRoundedRectangle(cornerRadii: corners, style: .continuous)
            .customStyle()
            .frame(width: 200, height: 50)
            .padding(.trailing, -120)
    }
}

//MARK: - Extension

struct ShapeCustomModifier <S:Shape> : ViewModifier {
    
    let shape: S
    
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.white)
            .opacity(0.4)
            .overlay(
                shape
                    .stroke(Color(UIColor.lightGray), lineWidth: 0.3)
            )
    }
}

extension Shape {
    func customStyle() -> some View {
        ModifiedContent(content: self, modifier: ShapeCustomModifier(shape: self))
    }
}


#Preview {
    UserBar()
}
