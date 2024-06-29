//
//  UserDescriptionView.swift
//  SwiftUITestApp
//
//  Created by Александр Коробицын on 28.06.2024.
//

import Foundation
import SwiftUI

struct UserDescriptionView: View {
    
    let width: CGFloat
    let height: CGFloat
    
    let ageOld: String
    let phoneNumber: String
    let mail: String
    let address: String
    
    var body: some View {
        
        let corners = RectangleCornerRadii(TL: 10, BL: 40, BT: 10, TT: 10)
        
        ZStack {
            UnevenRoundedRectangle(cornerRadii: corners, style: .continuous)
                .customStyle()
            .frame(width: width, height: height)
            
            VStack(spacing: 4) {
                DescriptionString(imageName: "manIcon", text: ageOld)
                DescriptionString(imageName: "phoneIcon", text: phoneNumber)
                DescriptionString(imageName: "mailIcon", text: mail)
                DescriptionString(imageName: "pinIcon", text: address)
            }
        }
    }
}

//MARK: - DescriptionString

struct DescriptionString: View {
    
    let imageName: String
    let text: String
    
    var body: some View {
        HStack(spacing: 15) {
           Image(imageName)
                .renderingMode(.template)
                .foregroundStyle(.gray)
            Text(text)
                .lineLimit(1)
                .font(Font.system(size: 15, weight: .medium))
                .foregroundStyle(Color(UIColor.darkGray))
        }.padding(.trailing, 40)
            .frame(maxWidth: 300)
    }
}

//MARK: - Preview

#Preview {
    UserDescriptionView(width: 320, height: 160,
                        ageOld: "37 age old", 
                        phoneNumber: "(402) 521-3959",
                        mail: "flenn.peck@example.com",
                        address: "4351 Pecan Acres Ln")
}
