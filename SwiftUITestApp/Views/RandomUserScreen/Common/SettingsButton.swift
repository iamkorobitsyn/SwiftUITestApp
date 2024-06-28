//
//  SettingsButton.swift
//  SwiftUITestApp
//
//  Created by Александр Коробицын on 28.06.2024.
//

import Foundation
import SwiftUI

struct SettingsButton: View {
    
    var body: some View {
        Button(action: {print("ok")}) {

            Circle()
                .trim(from: 0.1, to: 0.9)
                .stroke(style: StrokeStyle(lineWidth: 1.5, lineCap: .round))

                .foregroundStyle(.orange)
//                    .customStyle()
//                Image("settingsIcon")
//                    .renderingMode(.template)
//                    .foregroundStyle(Color(UIColor.darkGray))
          
        }
    }
}
