//
//  TapGesture_06.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 15/06/25.
//

import SwiftUI

struct TapGesture_06: View {
    @State var isSelected: Bool = false
    var body: some View {
       
        VStack{
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 150)
                .foregroundColor(isSelected ? Color.red : Color.orange)
            
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(25)
            })
            Text("Tap Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 60)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(25)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
                .onTapGesture(count: 2, perform: {
                    isSelected.toggle()
                })
        }
        .padding()
        Spacer()
    }
}

#Preview {
    TapGesture_06()
}
