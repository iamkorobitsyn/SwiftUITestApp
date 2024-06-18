//
//  RandomizerScreen.swift
//  SwiftUITestApp
//
//  Created by Александр Коробицын on 18.06.2024.
//

import SwiftUI

struct RandomizerView: View {
    
    @State private var rotation: Double = 0
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.orange, .white], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                Text("RANDOM USER")
                    .font(.system(size: 55, weight: .ultraLight))
                    .foregroundStyle(Color(UIColor.white))
                    .padding(.top, 40)
                
                Spacer()
                    
                RandomizerButton(action: {})
                    .padding(.bottom, 50)
            }
            
        }
        
    }
}


#Preview {
    RandomizerView()
}
