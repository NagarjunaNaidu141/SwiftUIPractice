//
//  TernaryOperator_02.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 12/06/25.
//

import SwiftUI

struct TernaryOperator_02: View {
    @State var isStartingState: Bool = true
    var body: some View {
       
        VStack{
            Button("Button Tapped \(isStartingState)"){
                isStartingState.toggle()
            }
//            if isStartingState{
//                RoundedRectangle(cornerRadius: 25)
//                    .fill(.red)
//                    .frame(width: 100, height: 100)
//            }else{
//                RoundedRectangle(cornerRadius: 25)
//                    .fill(.yellow)
//                    .frame(width: 100, height: 100)
//            }
            // instead of long code we can place in single line
            Text(isStartingState ? "Staring State" : "Ending State")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? .red : .yellow)
                .frame(width: isStartingState ? 200: 100, height: isStartingState ? 200: 100)
            
        }
        Spacer()
    }
}

#Preview {
    TernaryOperator_02()
}
