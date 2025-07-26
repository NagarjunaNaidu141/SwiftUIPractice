//
//  Animation_03.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 12/06/25.
//

import SwiftUI

struct Animation_03: View {
    @State var isAnimated: Bool = false
    var body: some View {
        
        VStack{
            Button("Button"){
                withAnimation(
                    Animation
                    .default
                    //.delay(1.0))
                        //.repeatCount(6, autoreverses: true)
                       // .repeatForever(autoreverses: true)
                    ) {
                    isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.blue)
                .frame(
                    width: isAnimated ? 100 : 200,
                    height: isAnimated ? 100 : 200)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            Spacer()
        }
    }
}

#Preview {
    Animation_03()
}
