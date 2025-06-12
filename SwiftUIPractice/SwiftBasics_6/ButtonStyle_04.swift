//
//  ButtonStyle_04.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 18/06/25.
//

import SwiftUI

struct ButtonStyle_04: View {
    var body: some View {
        VStack(spacing: 10){
            
            Button(action: {
                
            }, label: {
                Text("Button title")
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .buttonStyle(.plain)
                    .buttonBorderShape(.capsule)
                    .controlSize(.mini)
                    .background(.white)
                    .shadow(radius: 5)
            })
            
            Button("plain style"){
                
            }
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)
            .controlSize(.mini)
            .background(.white)
            .shadow(radius: 5)
            
            Button("automatic style"){
                
            }
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .buttonStyle(.automatic)
            .controlSize(.large)
            .background(.white)
            .shadow(radius: 5)
            
            Button("bordered style"){
                
            }
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .buttonStyle(.bordered)
            .controlSize(.extraLarge)
            .background(.white)
            .shadow(radius: 5)
            
            Button("borderedProminent"){
                
            }
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.small)
            .background(.white)
            .shadow(radius: 5)
            
            Button("borderless style"){
                
            }
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)
            .controlSize(.regular)
            .background(.white)
            .shadow(radius: 5)
            
        }
        .padding(30)
    }
}

#Preview {
    ButtonStyle_04()
}
