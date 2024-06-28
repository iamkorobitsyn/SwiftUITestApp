//
//  UIView+Extansion.swift
//  SwiftUITestApp
//
//  Created by Александр Коробицын on 28.06.2024.
//

import Foundation
import SwiftUI


extension Shape {

    func customStyle() -> some View {
        ModifiedContent(content: self, modifier: ShapeCustomModifier(shape: self))
    }
}


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
