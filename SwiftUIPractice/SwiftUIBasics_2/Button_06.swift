//
//  Button_06.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 11/06/25.
//

import SwiftUI

struct Button_06: View {
    @State var title: String = "This is title"
    var body: some View {
        
        VStack(spacing: 20){
            Text(title)
            Button("Press me"){
                self.title = "Button Pressed"
            }
            .accentColor(.red)
            Button(action: {
                self.title = "Action Button Pressed"
                
            }, label: {
                Text("Press Action".uppercased())
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(.horizontal,20)
                    .background(
                        Color.red
                            .cornerRadius(20)
                            .shadow(radius: 20)
                    )
                
            })
            Button(action: {
                self.title = "Button 3 pressed"
                
            }, label: {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 100)
                    .shadow(radius: 20)
                    .overlay(
                        Image(systemName: "heart.fill"))
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
            })
            Button(action: {
                self.title = "Button 4 pressed"
            }, label: {
                Text("finished".capitalized)
                    .font(.title)
                    .bold()
                    .padding(.horizontal,10)
                    .padding()
                    .background(
                Capsule()
                    .stroke(Color.gray, lineWidth: 2)
                )
            })

        }
        
    }
}

#Preview {
    Button_06()
}

