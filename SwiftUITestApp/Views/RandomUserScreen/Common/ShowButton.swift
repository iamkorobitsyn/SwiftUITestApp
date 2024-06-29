//
//  RandomizerButton.swift
//  SwiftUITestApp
//
//  Created by Александр Коробицын on 18.06.2024.
//

import Foundation
import SwiftUI

struct ShowButton: View {
    
    let width: CGFloat
    let height: CGFloat
    let action: () -> Void
    
    @State private var degress: Double = 90
    
    var body: some View {
        ZStack {
            
            Button(action: {
                action()
                withAnimation(.bouncy(duration: 0.5)) { degress -= 360 } }) {
                    ZStack {
                        Text("SHOW")
                            .foregroundStyle(Color(UIColor.darkGray))
                            .font(.system(size: 20, weight: .thin))
                        
                        Circle()
                            .trim(from: 0.1, to: 0.9)
                            .stroke(style: StrokeStyle(lineWidth: 1.5, lineCap: .round))
                            .rotationEffect(.degrees(-degress))
                            .foregroundStyle(.orange)
                    }
                }.frame(width: 140, height: 140)
        }
    }
}

#Preview {
    ShowButton(width: 140, height: 140, action: {})
}
