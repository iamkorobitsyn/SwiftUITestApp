//
//  UserHeaderView.swift
//  SwiftUITestApp
//
//  Created by Александр Коробицын on 28.06.2024.
//

import Foundation
import SwiftUI


struct UserHeaderView: View {
    
    let width: CGFloat
    let height: CGFloat
    
    let imageName: String
    let nameSurename: String
    
    var body: some View {
        
        let corners = RectangleCornerRadii(TL: 40, BL: 10, BT: 10, TT: 40)
        
        ZStack {
            UnevenRoundedRectangle(cornerRadii: corners,
                                   style: .continuous)
            .customStyle()
            .frame(width: width, height: height)
            
            VStack(spacing: 15) {
                Image(imageName)
                    .resizable()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
                Text(nameSurename)
                    .font(Font.system(size: 20, weight: .bold))
                    .foregroundStyle(Color(UIColor.darkGray))
            }
        }
    }
}

#Preview {
    UserHeaderView(width: 320, height: 160,
                   imageName: "testPhoto",
                   nameSurename: "Flenn Peck")
}
