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
    
    @State private var userName: String = ""
    @FocusState private var fieldFocused: Bool
    
    var body: some View {
        
        let corners = RectangleCornerRadii(TL: 40, BL: 10, BT: 10, TT: 40)
        ZStack {
            UnevenRoundedRectangle(cornerRadii: corners, style: .continuous)
                .customStyle()
                .frame(width: width, height: height)
            VStack() {
                Text(userName)
                    .font(Font.system(size: 20, weight: .bold))
                    .foregroundStyle(Color(UIColor.darkGray))
                    .frame(height: 50)
                    .padding(.bottom, 20)
                TextField("Please, enter your name", text: "\($userName)")
                    .focused($fieldFocused)
                    .foregroundStyle(Color(UIColor.darkGray))
                    .multilineTextAlignment(.center)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                            .frame(width: 250, height: 50)
                            
                    )
                    .padding(.bottom, 30)
                    
                    
            }
            .toolbar {
                        ToolbarItem(placement: .keyboard) {
                            HStack {
                                Spacer()
                                Button("OK") {
                                    fieldFocused = false // Закрыть клавиатуру
                                }
                            }
                            
                            .foregroundColor(.blue)
                        }
                    }
                    .padding()
                    
                    
            }
            
        }
        
}

#Preview {
    SettingsHeaderView(width: 320, height: 160)
}
