//
//  RandomizerScreen.swift
//  SwiftUITestApp
//
//  Created by Александр Коробицын on 18.06.2024.
//

import SwiftUI

struct RandomUserScreenMainView: View {
    
    @State private var rotation: Double = 0

    let topColor = UIColor(r: 105, g: 152, b: 185)
    
    var body: some View {
        ZStack {
            
            LinearGradient(colors: [Color(topColor), .white],
                           startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
            
            VStack {
                Spacer()

                VStack(spacing: 4) {
                    SettingsButton()
                        .frame(width: 400)
                        .padding(.bottom, 20)

                    UserHeaderView()
                        .frame(width: 320, height: 160)
                    UserDescriptionView()
                        .frame(width: 320, height: 160)
                    UserTransferView()
                        .frame(width: 200, height: 50)
                        .padding(.trailing, -120)
                }
                .padding(.top, 20)
                
                Spacer()
                
                ShowButton(action: {})
                    .frame(width: 140)
                    .padding(.bottom, 40)
            }
        }
    }
}


#Preview {
    RandomUserScreenMainView()
}
