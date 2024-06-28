//
//  CornerRadii+Extansion.swift
//  SwiftUITestApp
//
//  Created by Александр Коробицын on 28.06.2024.
//

import Foundation
import SwiftUI

extension RectangleCornerRadii {
    
    init(all: CGFloat) {
        self.init(topLeading: all, bottomLeading: all, bottomTrailing: all, topTrailing: all)
    }
    
    init(TL: CGFloat, BL: CGFloat, BT: CGFloat, TT: CGFloat) {
        self.init(topLeading: TL, bottomLeading: BL, bottomTrailing: BT, topTrailing: TT)
    }
}
