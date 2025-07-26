//
//  AnimationCurve_04.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 12/06/25.
//

import SwiftUI

struct AnimationCurve_04: View {
    @State var isAnimating: Bool = false
    @State var timing: Double = 6.0
    var body: some View {
        VStack{
            Button("Button"){
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.spring(
                    response: 0.6,
                    dampingFraction: 0.8,
                    blendDuration: 1
                ))
            
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.easeInOut(duration: timing))
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.easeIn(duration: timing))
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.linear(duration: timing))
        }
    }
}

#Preview {
    AnimationCurve_04()
}
