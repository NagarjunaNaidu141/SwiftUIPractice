//
//  Image_4_UIView.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 09/06/25.
//

import SwiftUI

struct Image_4_UIView: View {
    var body: some View {
        Image("Nagarjuna")
            .resizable()
            //.aspectRatio(contentMode: .fit)
            .scaledToFit()
            .frame(width: 300, height: 300)
           // .clipped()
            //.cornerRadius(150)
            .clipShape(
                RotatedShape
            )
    }
}

#Preview {
    Image_4_UIView()
}
