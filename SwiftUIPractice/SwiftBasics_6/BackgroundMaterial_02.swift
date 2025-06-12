//
//  BackgroundMaterial_02.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 18/06/25.
//

import SwiftUI

struct BackgroundMaterial_02: View {
    var body: some View {
       
        VStack{
            Spacer()
            VStack{
                Text("HI")
                    .frame(height: 350)
                    .frame(maxWidth: .infinity)
                   // .background(.orange.opacity(0.5))
                    .background(.ultraThinMaterial)
                    .cornerRadius(20)
            }
            
            .background(
                Image("Nagarjuna")
            )
        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    BackgroundMaterial_02()
}
