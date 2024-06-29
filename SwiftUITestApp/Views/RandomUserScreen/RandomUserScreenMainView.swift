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
                    
                    InteractionButton(action: {},
                                      iconName: "settingsIcon",
                                      iconColor: .blue)
                    .padding(.bottom, 25)
                    .padding(.leading, 270)

                    UserHeaderView(width: 320, height: 160,
                                   imageName: "testPhoto",
                                   nameSurename: "Flenn Peck")
                    
                    UserDescriptionView(width: 320, height: 160,
                                        ageOld: "37 age old",
                                        phoneNumber: "(402) 521-3959",
                                        mail: "flenn.peck@example.com",
                                        address: "4351 Pecan Acres Ln")
                    
                    InteractionButton(action: {},
                                      iconName: "addIcon",
                                      iconColor: .orange)
                    .padding(.top, 25)
                    .padding(.leading, 270)
                    
                }
                
                Spacer()
                
                ShowButton(width: 140, height: 140, action: {})
                    .padding(.bottom, 40)
            }
        }
    }
}


#Preview {
    RandomUserScreenMainView()
}
