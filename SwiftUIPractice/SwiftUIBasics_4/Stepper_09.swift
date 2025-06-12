//
//  Stepper_09.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 14/06/25.
//

import SwiftUI

struct Stepper_09: View {
    @State var stepperValue: Int = 10
    @State var changeWidth: CGFloat = 0
    var body: some View {
        
        VStack{
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding()
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 100 + changeWidth, height: 100)
            Stepper("Stteper 2", onIncrement: {
                incrementWidth(amount: 100)
            }, onDecrement: {
                incrementWidth(amount: -100)
            })
            
        }
    }
    func incrementWidth(amount: CGFloat){
        withAnimation(.linear(duration: 0.5)){
            changeWidth += amount
        }
    }
}

#Preview {
    Stepper_09()
}
