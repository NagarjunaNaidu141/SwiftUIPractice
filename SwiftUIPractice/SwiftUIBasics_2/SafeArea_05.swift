//
//  SafeArea_05.swift
//  SwiftUIPractice
//
//  Created by Nagarjuna Naidu on 11/06/25.
//

import SwiftUI

struct SafeArea_05: View {
    var body: some View {
        
//        VStack{
//            Text("Hi hello")
//            Spacer()
//                
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(.yellow)
//        .edgesIgnoringSafeArea(.all)
     
        ScrollView{
            VStack{
                Text("Title goes here")
                    .font(.headline)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    
                ForEach(0..<10){ index in
                    
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .shadow(radius: 5)
                        .frame(height: 150)
                        .padding()
                }
                
            }
        }
        
        .background(
            Color.red
               // .edgesIgnoringSafeArea(.all)
                .ignoresSafeArea(edges: .bottom)
        )
       // Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        
    }
}

#Preview {
    SafeArea_05()
}
