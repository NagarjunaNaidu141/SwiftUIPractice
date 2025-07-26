//
//  ColorPicker_07.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 14/06/25.
//

import SwiftUI

struct ColorPicker_07: View {
    @State var backgroundColor: Color = .blue
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            ColorPicker("Select Background Color", selection: $backgroundColor)
                .padding()
                .foregroundStyle(.white)
                .background(.black)
                .font(.headline)
                .cornerRadius(20)
                .padding()
            
                
        }
        
        
    }
}

#Preview {
    ColorPicker_07()
}
