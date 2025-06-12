//
//  Padding_9.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 10/06/25.
//

import SwiftUI

struct Padding_9: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("define, Padding!".uppercased())
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom,10)
            
            Text("making additional space inside an element, keeping it at a set distance from other aspects of a website".capitalized)
           
        }
        
//        .background(.yellow)
//        .padding()
//        .background(.pink)
//        .padding(.horizontal,10)
//        .background(.green)
        .padding()
        .padding(.vertical,20)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 0.0,
                    y: 10.0
                )
        )
    }
}

#Preview {
    Padding_9()
}


