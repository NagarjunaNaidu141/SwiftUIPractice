//
//  Conditonal_01.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 12/06/25.
//

import SwiftUI

struct Conditonal_01: View {
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    var body: some View {
        
        VStack(spacing: 20){
            Button("is loading \(isLoading)"){
                isLoading.toggle()
            }
            if isLoading{
                ProgressView()
            }
            Button("Circle Button \(showCircle.description)"){
                showCircle.toggle()
                
            }
        
            Button("Rectange Button \(showRectangle.description)"){
                showRectangle.toggle()
                
            }
            
            if showCircle{
                Circle()
                    .frame(width:100, height: 100)
            }
            if showRectangle{
                Rectangle()
                    .frame(width:100, height: 100)
            }
            if showCircle || showRectangle{
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 100, height: 100)
            }
        }
        Spacer()
    }
}

#Preview {
    Conditonal_01()
}
