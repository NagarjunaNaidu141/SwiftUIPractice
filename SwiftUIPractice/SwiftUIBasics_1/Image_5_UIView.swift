//
//  Image_4_UIView.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 09/06/25.
//

import SwiftUI

struct Image_5_UIView: View {
    var body: some View {
        Image("google")
            //.renderingMode(.template)
            .resizable()
            //.aspectRatio(contentMode: .fit)
            .scaledToFit()
            .foregroundColor(.red)
            .frame(width: 300, height: 300)
           // .clipped()
            //.cornerRadius(150)
            //.clipShape(
                //Circle()
                //RoundedRectangle(cornerRadius: 30)
               // Ellipse()
                
           // )
    }
}

#Preview {
    Image_5_UIView()
}

