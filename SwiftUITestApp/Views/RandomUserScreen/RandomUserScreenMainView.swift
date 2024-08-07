//
//  RandomizerScreen.swift
//  SwiftUITestApp
//
//  Created by Александр Коробицын on 18.06.2024.
//

import SwiftUI

struct RandomUserScreenMainView: View {
    
    @State private var showSettingsScreen = false

    @State private var topColor = UIColor(r: 105, g: 152, b: 185)
    
    var body: some View {
 
        ZStack {
            LinearGradient(colors: [Color(UIColor(r: topColor.ciColor.red,
                                                  g: topColor.ciColor.green,
                                                  b: topColor.ciColor.blue)), .white],
                           startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
            
            VStack {
                Spacer()

                VStack(spacing: 4) {
                    
                    InteractionButton(action: {showSettingsScreen.toggle()},
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
                
            }.ignoresSafeArea(.keyboard)
        }
        
        .sheet(isPresented: $showSettingsScreen, content: {
            SettingsScreen(customColor: topColor)
        })
    }
}


#Preview {
    RandomUserScreenMainView()
}
