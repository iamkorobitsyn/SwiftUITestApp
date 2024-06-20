//
//  RandomizerScreen.swift
//  SwiftUITestApp
//
//  Created by Александр Коробицын on 18.06.2024.
//

import SwiftUI

struct RandomizerView: View {
    
    @State private var rotation: Double = 0

    let topColor = UIColor(r: 105, g: 152, b: 185)
    
    var body: some View {
        ZStack {
            
            LinearGradient(colors: [Color(topColor), .white],
                           startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
            
            VStack {
                Spacer()

                Button(action: {}) {
                    ZStack {
                        Circle()
                            .customStyle()
                            .frame(width: 50, height: 50)
                            
                        
                        Image("settingsIcon")
                            .renderingMode(.template)
                            .foregroundStyle(Color(UIColor.darkGray))
                    }
                    
                }
                

                UserBar()
                    .padding(.top, 20)
                
                Spacer()

                RandomizerButton(action: {})
                    .padding(.bottom, 40)
            }
        }
    }
}


#Preview {
    RandomizerView()
}
