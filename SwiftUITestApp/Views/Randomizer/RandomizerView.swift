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
            
            Button(action: {
                withAnimation(.bouncy(duration: 0.3)) { // Анимация с длительностью 2 секунды
                            rotation += 360 // Поворот на 180 градусов
                        }
                    }) {
                        Circle()
                            .trim(from: 0.1, to: 0.9) // От 0.0 до 0.75 для создания кольца
                            .stroke(lineWidth: 2) // Ширина кольца
                            .foregroundColor(.blue) // Цвет кольца
                            .frame(width: 150, height: 150) // Размер кольца
                            .rotationEffect(.degrees(rotation - 90)) // Поворот на -90 градусов для начала сверху + анимация
                    }
        }
        
    }
}


#Preview {
    RandomizerView()
}
